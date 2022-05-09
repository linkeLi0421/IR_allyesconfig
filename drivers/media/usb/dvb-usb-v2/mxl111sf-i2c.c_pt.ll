; ModuleID = '/llk/IR_all_yes/drivers/media/usb/dvb-usb-v2/mxl111sf-i2c.c_pt.bc'
source_filename = "../drivers/media/usb/dvb-usb-v2/mxl111sf-i2c.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.i2c_adapter = type { ptr, i32, ptr, ptr, ptr, %struct.rt_mutex, %struct.rt_mutex, i32, i32, %struct.device, i32, i32, [48 x i8], %struct.completion, %struct.mutex, %struct.list_head, ptr, ptr, ptr, ptr }
%struct.rt_mutex = type { %struct.rt_mutex_base, %struct.lockdep_map }
%struct.rt_mutex_base = type { %struct.raw_spinlock, %struct.rb_root_cached, ptr }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.dvb_usb_device = type { ptr, ptr, ptr, i8, ptr, ptr, %struct.dvb_usb_rc, i32, %struct.mutex, %struct.mutex, %struct.i2c_adapter, [2 x %struct.dvb_usb_adapter], ptr, [64 x i8], %struct.delayed_work, ptr }
%struct.dvb_usb_rc = type { ptr, i64, ptr, ptr, i32, i32, i8, i32 }
%struct.dvb_usb_adapter = type { ptr, %struct.usb_data_stream, i8, i8, i8, i8, i8, i8, i8, i32, %struct.dvb_adapter, %struct.dmxdev, %struct.dvb_demux, %struct.dvb_net, [3 x ptr], [3 x ptr], [3 x ptr] }
%struct.usb_data_stream = type { ptr, %struct.usb_data_stream_properties, i8, ptr, [10 x ptr], i32, i32, [10 x ptr], [10 x i32], i32, i32, ptr }
%struct.usb_data_stream_properties = type { i8, i8, i8, %union.anon.124 }
%union.anon.124 = type { %struct.anon.126 }
%struct.anon.126 = type { i32, i32, i32 }
%struct.dvb_adapter = type { i32, %struct.list_head, %struct.list_head, ptr, [6 x i8], ptr, ptr, ptr, i32, ptr, %struct.mutex, %struct.mutex, ptr, ptr, ptr }
%struct.dmxdev = type { ptr, ptr, ptr, ptr, i32, i32, i8, ptr, %struct.dvb_ringbuffer, %struct.dvb_vb2_ctx, %struct.mutex, %struct.spinlock }
%struct.dvb_ringbuffer = type { ptr, i32, i32, i32, i32, %struct.wait_queue_head, %struct.spinlock }
%struct.dvb_vb2_ctx = type { %struct.vb2_queue, %struct.mutex, %struct.spinlock, %struct.list_head, ptr, i32, i32, i32, i32, i32, i32, i32, i32, [21 x i8] }
%struct.vb2_queue = type { i32, i32, ptr, i32, i16, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, [8 x ptr], %struct.mutex, i32, i32, [32 x ptr], i32, %struct.list_head, i32, %struct.atomic_t, %struct.list_head, %struct.spinlock, %struct.wait_queue_head, i16, ptr, ptr, [32 x i8], i32, i32, i32, i32, i32 }
%struct.dvb_demux = type { %struct.dmx_demux, ptr, i32, i32, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, %struct.list_head, [20 x ptr], [20 x i16], %struct.list_head, [204 x i8], i32, %struct.mutex, %struct.spinlock, ptr, i64, i32, i32, i32 }
%struct.dmx_demux = type { i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.dvb_net = type { ptr, [10 x ptr], [10 x i32], i8, ptr, %struct.mutex }
%struct.mxl111sf_state = type { ptr, i32, i8, i8, i8, i8, i32, i32, i32, %struct.tveeprom, %struct.mutex, i8, [3 x %struct.mxl111sf_adap_state], [64 x i8], [64 x i8], %struct.mutex, %struct.media_entity, [2 x %struct.media_pad] }
%struct.tveeprom = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [5 x i8], [6 x i8] }
%struct.mxl111sf_adap_state = type { i32, i32, i32, i32, ptr, ptr }
%struct.media_entity = type { %struct.media_gobj, ptr, i32, i32, i32, i16, i16, i16, i32, ptr, %struct.list_head, ptr, i32, i32, ptr, %union.anon.130 }
%struct.media_gobj = type { ptr, i32, %struct.list_head }
%union.anon.130 = type { %struct.anon.131 }
%struct.anon.131 = type { i32, i32 }
%struct.media_pad = type { %struct.media_gobj, ptr, i16, i32, i32 }
%struct.i2c_msg = type { i16, i16, i16, ptr }

@dvb_usb_mxl111sf_debug = external dso_local local_unnamed_addr global i32, align 4
@mxl111sf_i2c_xfer._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 814, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"\013%s: error %d on line %d\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"mxl111sf_i2c_xfer\00", [46 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"drivers/media/usb/dvb-usb-v2/mxl111sf-i2c.c\00", [52 x i8] zeroinitializer }, align 32
@mxl111sf_i2c_xfer._entry_ptr = internal global ptr @mxl111sf_i2c_xfer._entry, section ".printk_index", align 4
@mxl111sf_i2c_xfer._entry.3 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.1, ptr @.str.2, i32 819, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [87 x i8], [41 x i8] } { [87 x i8] c"\017%s: failed with error %d on i2c transaction %d of %d, %sing %d bytes to/from 0x%02x\0A\00", [41 x i8] zeroinitializer }, align 32
@mxl111sf_i2c_xfer._entry_ptr.5 = internal global ptr @mxl111sf_i2c_xfer._entry.3, section ".printk_index", align 4
@.str.6 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"read\00", [27 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"writ\00", [27 x i8] zeroinitializer }, align 32
@mxl111sf_i2c_hw_xfer_msg._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.9, ptr @.str.2, i32 442, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [59 x i8], [37 x i8] } { [59 x i8] c"\017%s: addr: 0x%02x, read buff len: %d, write buff len: %d\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"mxl111sf_i2c_hw_xfer_msg\00", [39 x i8] zeroinitializer }, align 32
@mxl111sf_i2c_hw_xfer_msg._entry_ptr = internal global ptr @mxl111sf_i2c_hw_xfer_msg._entry, section ".printk_index", align 4
@mxl111sf_i2c_hw_xfer_msg._entry.10 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.9, ptr @.str.2, i32 479, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"\017%s: %d\09%02x\0A\00", [17 x i8] zeroinitializer }, align 32
@mxl111sf_i2c_hw_xfer_msg._entry_ptr.12 = internal global ptr @mxl111sf_i2c_hw_xfer_msg._entry.10, section ".printk_index", align 4
@mxl111sf_i2c_hw_xfer_msg._entry.13 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.9, ptr @.str.2, i32 496, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"\017%s: NACK writing slave address %02x\0A\00", [57 x i8] zeroinitializer }, align 32
@mxl111sf_i2c_hw_xfer_msg._entry_ptr.15 = internal global ptr @mxl111sf_i2c_hw_xfer_msg._entry.13, section ".printk_index", align 4
@mxl111sf_i2c_hw_xfer_msg._entry.16 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @.str.9, ptr @.str.2, i32 512, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"\017%s: block_len %d, left_over_len %d\0A\00", [58 x i8] zeroinitializer }, align 32
@mxl111sf_i2c_hw_xfer_msg._entry_ptr.18 = internal global ptr @mxl111sf_i2c_hw_xfer_msg._entry.16, section ".printk_index", align 4
@mxl111sf_i2c_hw_xfer_msg._entry.19 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.9, ptr @.str.2, i32 527, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@mxl111sf_i2c_hw_xfer_msg._entry_ptr.20 = internal global ptr @mxl111sf_i2c_hw_xfer_msg._entry.19, section ".printk_index", align 4
@mxl111sf_i2c_hw_xfer_msg._entry.21 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.22, ptr @.str.9, ptr @.str.2, i32 550, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"\017%s: index = %d %d data %d\0A\00", [35 x i8] zeroinitializer }, align 32
@mxl111sf_i2c_hw_xfer_msg._entry_ptr.23 = internal global ptr @mxl111sf_i2c_hw_xfer_msg._entry.21, section ".printk_index", align 4
@mxl111sf_i2c_hw_xfer_msg._entry.24 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.9, ptr @.str.2, i32 558, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@mxl111sf_i2c_hw_xfer_msg._entry_ptr.25 = internal global ptr @mxl111sf_i2c_hw_xfer_msg._entry.24, section ".printk_index", align 4
@mxl111sf_i2c_hw_xfer_msg._entry.26 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.27, ptr @.str.9, ptr @.str.2, i32 579, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"\017%s: read buf len %d\0A\00", [41 x i8] zeroinitializer }, align 32
@mxl111sf_i2c_hw_xfer_msg._entry_ptr.28 = internal global ptr @mxl111sf_i2c_hw_xfer_msg._entry.26, section ".printk_index", align 4
@mxl111sf_i2c_hw_xfer_msg._entry.29 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.30, ptr @.str.9, ptr @.str.2, i32 602, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"\017%s: NACK reading slave address %02x\0A\00", [57 x i8] zeroinitializer }, align 32
@mxl111sf_i2c_hw_xfer_msg._entry_ptr.31 = internal global ptr @mxl111sf_i2c_hw_xfer_msg._entry.29, section ".printk_index", align 4
@mxl111sf_i2c_hw_xfer_msg._entry.32 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @.str.9, ptr @.str.2, i32 620, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@mxl111sf_i2c_hw_xfer_msg._entry_ptr.33 = internal global ptr @mxl111sf_i2c_hw_xfer_msg._entry.32, section ".printk_index", align 4
@mxl111sf_i2c_hw_xfer_msg._entry.34 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.30, ptr @.str.9, ptr @.str.2, i32 639, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@mxl111sf_i2c_hw_xfer_msg._entry_ptr.35 = internal global ptr @mxl111sf_i2c_hw_xfer_msg._entry.34, section ".printk_index", align 4
@mxl111sf_i2c_hw_xfer_msg._entry.36 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.37, ptr @.str.9, ptr @.str.2, i32 656, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"\017%s: i2c fifo empty! @ %d\0A\00", [36 x i8] zeroinitializer }, align 32
@mxl111sf_i2c_hw_xfer_msg._entry_ptr.38 = internal global ptr @mxl111sf_i2c_hw_xfer_msg._entry.36, section ".printk_index", align 4
@mxl111sf_i2c_hw_xfer_msg._entry.39 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.40, ptr @.str.9, ptr @.str.2, i32 673, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"\017%s: read data: %02x\09 %02x\0A\00", [35 x i8] zeroinitializer }, align 32
@mxl111sf_i2c_hw_xfer_msg._entry_ptr.41 = internal global ptr @mxl111sf_i2c_hw_xfer_msg._entry.39, section ".printk_index", align 4
@mxl111sf_i2c_hw_xfer_msg._entry.42 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.40, ptr @.str.9, ptr @.str.2, i32 676, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@mxl111sf_i2c_hw_xfer_msg._entry_ptr.43 = internal global ptr @mxl111sf_i2c_hw_xfer_msg._entry.42, section ".printk_index", align 4
@mxl111sf_i2c_hw_xfer_msg._entry.44 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.45, ptr @.str.9, ptr @.str.2, i32 681, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"\017%s: readagain ERROR!\0A\00", [40 x i8] zeroinitializer }, align 32
@mxl111sf_i2c_hw_xfer_msg._entry_ptr.46 = internal global ptr @mxl111sf_i2c_hw_xfer_msg._entry.44, section ".printk_index", align 4
@mxl111sf_i2c_hw_xfer_msg._entry.47 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.30, ptr @.str.9, ptr @.str.2, i32 715, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@mxl111sf_i2c_hw_xfer_msg._entry_ptr.48 = internal global ptr @mxl111sf_i2c_hw_xfer_msg._entry.47, section ".printk_index", align 4
@mxl111sf_i2c_hw_xfer_msg._entry.49 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.40, ptr @.str.9, ptr @.str.2, i32 730, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@mxl111sf_i2c_hw_xfer_msg._entry_ptr.50 = internal global ptr @mxl111sf_i2c_hw_xfer_msg._entry.49, section ".printk_index", align 4
@mxl111sf_i2c_send_data._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.51, ptr @.str.2, i32 312, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"mxl111sf_i2c_send_data\00", [41 x i8] zeroinitializer }, align 32
@mxl111sf_i2c_send_data._entry_ptr = internal global ptr @mxl111sf_i2c_send_data._entry, section ".printk_index", align 4
@mxl111sf_i2c_check_status._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.52, ptr @.str.53, ptr @.str.2, i32 332, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"\017%s: ()\0A\00", [22 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"mxl111sf_i2c_check_status\00", [38 x i8] zeroinitializer }, align 32
@mxl111sf_i2c_check_status._entry_ptr = internal global ptr @mxl111sf_i2c_check_status._entry, section ".printk_index", align 4
@mxl111sf_i2c_get_data._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.54, ptr @.str.2, i32 322, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"mxl111sf_i2c_get_data\00", [42 x i8] zeroinitializer }, align 32
@mxl111sf_i2c_get_data._entry_ptr = internal global ptr @mxl111sf_i2c_get_data._entry, section ".printk_index", align 4
@mxl111sf_i2c_readagain._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.55, ptr @.str.56, ptr @.str.2, i32 390, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"\017%s: read %d bytes\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"mxl111sf_i2c_readagain\00", [41 x i8] zeroinitializer }, align 32
@mxl111sf_i2c_readagain._entry_ptr = internal global ptr @mxl111sf_i2c_readagain._entry, section ".printk_index", align 4
@mxl111sf_i2c_readagain._entry.57 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.58, ptr @.str.56, ptr @.str.2, i32 411, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"\017%s: error!\0A\00", [18 x i8] zeroinitializer }, align 32
@mxl111sf_i2c_readagain._entry_ptr.59 = internal global ptr @mxl111sf_i2c_readagain._entry.57, section ".printk_index", align 4
@mxl111sf_i2c_readagain._entry.60 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.61, ptr @.str.56, ptr @.str.2, i32 417, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.61 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"\017%s: %02x\09 %02x\0A\00", [46 x i8] zeroinitializer }, align 32
@mxl111sf_i2c_readagain._entry_ptr.62 = internal global ptr @mxl111sf_i2c_readagain._entry.60, section ".printk_index", align 4
@mxl111sf_i2c_check_fifo._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.52, ptr @.str.63, ptr @.str.2, i32 356, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.63 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"mxl111sf_i2c_check_fifo\00", [40 x i8] zeroinitializer }, align 32
@mxl111sf_i2c_check_fifo._entry_ptr = internal global ptr @mxl111sf_i2c_check_fifo._entry, section ".printk_index", align 4
@mxl111sf_i2c_check_fifo._entry.64 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.65, ptr @.str.63, ptr @.str.2, i32 376, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.65 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"\017%s: (buf[5] & 0x02) == 0x02\0A\00", [33 x i8] zeroinitializer }, align 32
@mxl111sf_i2c_check_fifo._entry_ptr.66 = internal global ptr @mxl111sf_i2c_check_fifo._entry.64, section ".printk_index", align 4
@mxl111sf_i2c_sw_xfer_msg._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.52, ptr @.str.67, ptr @.str.2, i32 230, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.67 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"mxl111sf_i2c_sw_xfer_msg\00", [39 x i8] zeroinitializer }, align 32
@mxl111sf_i2c_sw_xfer_msg._entry_ptr = internal global ptr @mxl111sf_i2c_sw_xfer_msg._entry, section ".printk_index", align 4
@mxl111sf_i2c_sw_xfer_msg._entry.68 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.67, ptr @.str.2, i32 235, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@mxl111sf_i2c_sw_xfer_msg._entry_ptr.69 = internal global ptr @mxl111sf_i2c_sw_xfer_msg._entry.68, section ".printk_index", align 4
@mxl111sf_i2c_sw_xfer_msg._entry.70 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.67, ptr @.str.2, i32 240, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@mxl111sf_i2c_sw_xfer_msg._entry_ptr.71 = internal global ptr @mxl111sf_i2c_sw_xfer_msg._entry.70, section ".printk_index", align 4
@mxl111sf_i2c_sw_xfer_msg._entry.72 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.67, ptr @.str.2, i32 248, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@mxl111sf_i2c_sw_xfer_msg._entry_ptr.73 = internal global ptr @mxl111sf_i2c_sw_xfer_msg._entry.72, section ".printk_index", align 4
@mxl111sf_i2c_sw_xfer_msg._entry.74 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.67, ptr @.str.2, i32 260, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@mxl111sf_i2c_sw_xfer_msg._entry_ptr.75 = internal global ptr @mxl111sf_i2c_sw_xfer_msg._entry.74, section ".printk_index", align 4
@mxl111sf_i2c_sw_xfer_msg._entry.76 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.67, ptr @.str.2, i32 266, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@mxl111sf_i2c_sw_xfer_msg._entry_ptr.77 = internal global ptr @mxl111sf_i2c_sw_xfer_msg._entry.76, section ".printk_index", align 4
@mxl111sf_i2c_sw_xfer_msg._entry.78 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.67, ptr @.str.2, i32 271, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@mxl111sf_i2c_sw_xfer_msg._entry_ptr.79 = internal global ptr @mxl111sf_i2c_sw_xfer_msg._entry.78, section ".printk_index", align 4
@mxl111sf_i2c_sw_xfer_msg._entry.80 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.67, ptr @.str.2, i32 279, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@mxl111sf_i2c_sw_xfer_msg._entry_ptr.81 = internal global ptr @mxl111sf_i2c_sw_xfer_msg._entry.80, section ".printk_index", align 4
@mxl111sf_i2c_start._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.52, ptr @.str.82, ptr @.str.2, i32 128, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.82 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"mxl111sf_i2c_start\00", [45 x i8] zeroinitializer }, align 32
@mxl111sf_i2c_start._entry_ptr = internal global ptr @mxl111sf_i2c_start._entry, section ".printk_index", align 4
@mxl111sf_i2c_start._entry.83 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.82, ptr @.str.2, i32 132, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@mxl111sf_i2c_start._entry_ptr.84 = internal global ptr @mxl111sf_i2c_start._entry.83, section ".printk_index", align 4
@mxl111sf_i2c_start._entry.85 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.82, ptr @.str.2, i32 137, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@mxl111sf_i2c_start._entry_ptr.86 = internal global ptr @mxl111sf_i2c_start._entry.85, section ".printk_index", align 4
@mxl111sf_i2c_start._entry.87 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.82, ptr @.str.2, i32 142, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@mxl111sf_i2c_start._entry_ptr.88 = internal global ptr @mxl111sf_i2c_start._entry.87, section ".printk_index", align 4
@mxl111sf_i2c_bitbang_sendbyte._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.89, ptr @.str.90, ptr @.str.2, i32 28, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.89 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"\017%s: (0x%02x)\0A\00", [16 x i8] zeroinitializer }, align 32
@.str.90 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"mxl111sf_i2c_bitbang_sendbyte\00", [34 x i8] zeroinitializer }, align 32
@mxl111sf_i2c_bitbang_sendbyte._entry_ptr = internal global ptr @mxl111sf_i2c_bitbang_sendbyte._entry, section ".printk_index", align 4
@mxl111sf_i2c_bitbang_sendbyte._entry.91 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.90, ptr @.str.2, i32 31, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@mxl111sf_i2c_bitbang_sendbyte._entry_ptr.92 = internal global ptr @mxl111sf_i2c_bitbang_sendbyte._entry.91, section ".printk_index", align 4
@mxl111sf_i2c_bitbang_sendbyte._entry.93 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.90, ptr @.str.2, i32 40, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@mxl111sf_i2c_bitbang_sendbyte._entry_ptr.94 = internal global ptr @mxl111sf_i2c_bitbang_sendbyte._entry.93, section ".printk_index", align 4
@mxl111sf_i2c_bitbang_sendbyte._entry.95 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.90, ptr @.str.2, i32 45, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@mxl111sf_i2c_bitbang_sendbyte._entry_ptr.96 = internal global ptr @mxl111sf_i2c_bitbang_sendbyte._entry.95, section ".printk_index", align 4
@mxl111sf_i2c_bitbang_sendbyte._entry.97 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.90, ptr @.str.2, i32 50, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@mxl111sf_i2c_bitbang_sendbyte._entry_ptr.98 = internal global ptr @mxl111sf_i2c_bitbang_sendbyte._entry.97, section ".printk_index", align 4
@mxl111sf_i2c_bitbang_sendbyte._entry.99 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.90, ptr @.str.2, i32 58, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@mxl111sf_i2c_bitbang_sendbyte._entry_ptr.100 = internal global ptr @mxl111sf_i2c_bitbang_sendbyte._entry.99, section ".printk_index", align 4
@mxl111sf_i2c_bitbang_sendbyte._entry.101 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.90, ptr @.str.2, i32 65, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@mxl111sf_i2c_bitbang_sendbyte._entry_ptr.102 = internal global ptr @mxl111sf_i2c_bitbang_sendbyte._entry.101, section ".printk_index", align 4
@mxl111sf_i2c_bitbang_sendbyte._entry.103 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.90, ptr @.str.2, i32 69, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@mxl111sf_i2c_bitbang_sendbyte._entry_ptr.104 = internal global ptr @mxl111sf_i2c_bitbang_sendbyte._entry.103, section ".printk_index", align 4
@mxl111sf_i2c_bitbang_sendbyte._entry.105 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.90, ptr @.str.2, i32 75, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@mxl111sf_i2c_bitbang_sendbyte._entry_ptr.106 = internal global ptr @mxl111sf_i2c_bitbang_sendbyte._entry.105, section ".printk_index", align 4
@mxl111sf_i2c_stop._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.52, ptr @.str.107, ptr @.str.2, i32 151, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.107 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"mxl111sf_i2c_stop\00", [46 x i8] zeroinitializer }, align 32
@mxl111sf_i2c_stop._entry_ptr = internal global ptr @mxl111sf_i2c_stop._entry, section ".printk_index", align 4
@mxl111sf_i2c_stop._entry.108 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.107, ptr @.str.2, i32 155, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@mxl111sf_i2c_stop._entry_ptr.109 = internal global ptr @mxl111sf_i2c_stop._entry.108, section ".printk_index", align 4
@mxl111sf_i2c_stop._entry.110 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.107, ptr @.str.2, i32 160, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@mxl111sf_i2c_stop._entry_ptr.111 = internal global ptr @mxl111sf_i2c_stop._entry.110, section ".printk_index", align 4
@mxl111sf_i2c_stop._entry.112 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.107, ptr @.str.2, i32 165, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@mxl111sf_i2c_stop._entry_ptr.113 = internal global ptr @mxl111sf_i2c_stop._entry.112, section ".printk_index", align 4
@mxl111sf_i2c_stop._entry.114 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.107, ptr @.str.2, i32 170, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@mxl111sf_i2c_stop._entry_ptr.115 = internal global ptr @mxl111sf_i2c_stop._entry.114, section ".printk_index", align 4
@mxl111sf_i2c_bitbang_recvbyte._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.52, ptr @.str.116, ptr @.str.2, i32 91, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.116 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"mxl111sf_i2c_bitbang_recvbyte\00", [34 x i8] zeroinitializer }, align 32
@mxl111sf_i2c_bitbang_recvbyte._entry_ptr = internal global ptr @mxl111sf_i2c_bitbang_recvbyte._entry, section ".printk_index", align 4
@mxl111sf_i2c_bitbang_recvbyte._entry.117 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.116, ptr @.str.2, i32 97, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@mxl111sf_i2c_bitbang_recvbyte._entry_ptr.118 = internal global ptr @mxl111sf_i2c_bitbang_recvbyte._entry.117, section ".printk_index", align 4
@mxl111sf_i2c_bitbang_recvbyte._entry.119 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.116, ptr @.str.2, i32 104, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@mxl111sf_i2c_bitbang_recvbyte._entry_ptr.120 = internal global ptr @mxl111sf_i2c_bitbang_recvbyte._entry.119, section ".printk_index", align 4
@mxl111sf_i2c_bitbang_recvbyte._entry.121 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.116, ptr @.str.2, i32 108, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@mxl111sf_i2c_bitbang_recvbyte._entry_ptr.122 = internal global ptr @mxl111sf_i2c_bitbang_recvbyte._entry.121, section ".printk_index", align 4
@mxl111sf_i2c_bitbang_recvbyte._entry.123 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.116, ptr @.str.2, i32 116, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@mxl111sf_i2c_bitbang_recvbyte._entry_ptr.124 = internal global ptr @mxl111sf_i2c_bitbang_recvbyte._entry.123, section ".printk_index", align 4
@mxl111sf_i2c_ack._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.52, ptr @.str.125, ptr @.str.2, i32 180, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.125 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"mxl111sf_i2c_ack\00", [47 x i8] zeroinitializer }, align 32
@mxl111sf_i2c_ack._entry_ptr = internal global ptr @mxl111sf_i2c_ack._entry, section ".printk_index", align 4
@mxl111sf_i2c_ack._entry.126 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.125, ptr @.str.2, i32 183, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@mxl111sf_i2c_ack._entry_ptr.127 = internal global ptr @mxl111sf_i2c_ack._entry.126, section ".printk_index", align 4
@mxl111sf_i2c_ack._entry.128 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.125, ptr @.str.2, i32 188, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@mxl111sf_i2c_ack._entry_ptr.129 = internal global ptr @mxl111sf_i2c_ack._entry.128, section ".printk_index", align 4
@mxl111sf_i2c_ack._entry.130 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.125, ptr @.str.2, i32 194, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@mxl111sf_i2c_ack._entry_ptr.131 = internal global ptr @mxl111sf_i2c_ack._entry.130, section ".printk_index", align 4
@mxl111sf_i2c_ack._entry.132 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.125, ptr @.str.2, i32 199, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@mxl111sf_i2c_ack._entry_ptr.133 = internal global ptr @mxl111sf_i2c_ack._entry.132, section ".printk_index", align 4
@mxl111sf_i2c_nack._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.52, ptr @.str.134, ptr @.str.2, i32 208, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.134 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"mxl111sf_i2c_nack\00", [46 x i8] zeroinitializer }, align 32
@mxl111sf_i2c_nack._entry_ptr = internal global ptr @mxl111sf_i2c_nack._entry, section ".printk_index", align 4
@mxl111sf_i2c_nack._entry.135 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.134, ptr @.str.2, i32 213, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@mxl111sf_i2c_nack._entry_ptr.136 = internal global ptr @mxl111sf_i2c_nack._entry.135, section ".printk_index", align 4
@mxl111sf_i2c_nack._entry.137 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.134, ptr @.str.2, i32 218, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@mxl111sf_i2c_nack._entry_ptr.138 = internal global ptr @mxl111sf_i2c_nack._entry.137, section ".printk_index", align 4
@___asan_gen_.150 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.440, i32 814, i32 7 }
@___asan_gen_.162 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.440, i32 815, i32 4 }
@___asan_gen_.171 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.440, i32 440, i32 2 }
@___asan_gen_.177 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.440, i32 479, i32 3 }
@___asan_gen_.183 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.440, i32 495, i32 4 }
@___asan_gen_.189 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.440, i32 511, i32 3 }
@___asan_gen_.192 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.440, i32 526, i32 5 }
@___asan_gen_.198 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.440, i32 549, i32 5 }
@___asan_gen_.201 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.440, i32 557, i32 5 }
@___asan_gen_.207 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.440, i32 579, i32 3 }
@___asan_gen_.213 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.440, i32 601, i32 4 }
@___asan_gen_.216 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.440, i32 619, i32 3 }
@___asan_gen_.219 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.440, i32 638, i32 5 }
@___asan_gen_.225 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.440, i32 655, i32 7 }
@___asan_gen_.231 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.440, i32 671, i32 6 }
@___asan_gen_.234 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.440, i32 674, i32 6 }
@___asan_gen_.240 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.440, i32 681, i32 8 }
@___asan_gen_.243 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.440, i32 714, i32 5 }
@___asan_gen_.246 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.440, i32 728, i32 5 }
@___asan_gen_.252 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.440, i32 312, i32 2 }
@___asan_gen_.261 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.440, i32 332, i32 2 }
@___asan_gen_.267 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.440, i32 322, i32 2 }
@___asan_gen_.276 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.440, i32 390, i32 2 }
@___asan_gen_.282 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.440, i32 411, i32 3 }
@___asan_gen_.288 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.440, i32 415, i32 4 }
@___asan_gen_.294 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.440, i32 356, i32 2 }
@___asan_gen_.300 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.440, i32 376, i32 3 }
@___asan_gen_.306 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.440, i32 230, i32 2 }
@___asan_gen_.309 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.440, i32 235, i32 7 }
@___asan_gen_.312 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.440, i32 240, i32 7 }
@___asan_gen_.315 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.440, i32 248, i32 8 }
@___asan_gen_.318 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.440, i32 260, i32 7 }
@___asan_gen_.321 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.440, i32 266, i32 7 }
@___asan_gen_.324 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.440, i32 271, i32 7 }
@___asan_gen_.327 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.440, i32 279, i32 8 }
@___asan_gen_.333 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.440, i32 128, i32 2 }
@___asan_gen_.336 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.440, i32 132, i32 6 }
@___asan_gen_.339 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.440, i32 137, i32 6 }
@___asan_gen_.342 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.440, i32 142, i32 2 }
@___asan_gen_.351 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.440, i32 28, i32 2 }
@___asan_gen_.354 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.440, i32 31, i32 6 }
@___asan_gen_.357 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.440, i32 40, i32 7 }
@___asan_gen_.360 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.440, i32 45, i32 7 }
@___asan_gen_.363 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.440, i32 50, i32 7 }
@___asan_gen_.366 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.440, i32 58, i32 7 }
@___asan_gen_.369 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.440, i32 65, i32 6 }
@___asan_gen_.372 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.440, i32 69, i32 6 }
@___asan_gen_.375 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.440, i32 75, i32 6 }
@___asan_gen_.381 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.440, i32 151, i32 2 }
@___asan_gen_.384 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.440, i32 155, i32 6 }
@___asan_gen_.387 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.440, i32 160, i32 6 }
@___asan_gen_.390 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.440, i32 165, i32 6 }
@___asan_gen_.393 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.440, i32 170, i32 2 }
@___asan_gen_.399 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.440, i32 91, i32 2 }
@___asan_gen_.402 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.440, i32 97, i32 6 }
@___asan_gen_.405 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.440, i32 104, i32 7 }
@___asan_gen_.408 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.440, i32 108, i32 7 }
@___asan_gen_.411 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.440, i32 116, i32 7 }
@___asan_gen_.417 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.440, i32 180, i32 2 }
@___asan_gen_.420 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.440, i32 183, i32 6 }
@___asan_gen_.423 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.440, i32 188, i32 6 }
@___asan_gen_.426 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.440, i32 194, i32 6 }
@___asan_gen_.429 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.440, i32 199, i32 2 }
@___asan_gen_.433 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.435 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.440, i32 208, i32 2 }
@___asan_gen_.438 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.440, i32 213, i32 6 }
@___asan_gen_.439 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.440 = private constant [47 x i8] c"../drivers/media/usb/dvb-usb-v2/mxl111sf-i2c.c\00", align 1
@___asan_gen_.441 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.440, i32 218, i32 2 }
@llvm.compiler.used = appending global [167 x ptr] [ptr @mxl111sf_i2c_ack._entry, ptr @mxl111sf_i2c_ack._entry.126, ptr @mxl111sf_i2c_ack._entry.128, ptr @mxl111sf_i2c_ack._entry.130, ptr @mxl111sf_i2c_ack._entry.132, ptr @mxl111sf_i2c_ack._entry_ptr, ptr @mxl111sf_i2c_ack._entry_ptr.127, ptr @mxl111sf_i2c_ack._entry_ptr.129, ptr @mxl111sf_i2c_ack._entry_ptr.131, ptr @mxl111sf_i2c_ack._entry_ptr.133, ptr @mxl111sf_i2c_bitbang_recvbyte._entry, ptr @mxl111sf_i2c_bitbang_recvbyte._entry.117, ptr @mxl111sf_i2c_bitbang_recvbyte._entry.119, ptr @mxl111sf_i2c_bitbang_recvbyte._entry.121, ptr @mxl111sf_i2c_bitbang_recvbyte._entry.123, ptr @mxl111sf_i2c_bitbang_recvbyte._entry_ptr, ptr @mxl111sf_i2c_bitbang_recvbyte._entry_ptr.118, ptr @mxl111sf_i2c_bitbang_recvbyte._entry_ptr.120, ptr @mxl111sf_i2c_bitbang_recvbyte._entry_ptr.122, ptr @mxl111sf_i2c_bitbang_recvbyte._entry_ptr.124, ptr @mxl111sf_i2c_bitbang_sendbyte._entry, ptr @mxl111sf_i2c_bitbang_sendbyte._entry.101, ptr @mxl111sf_i2c_bitbang_sendbyte._entry.103, ptr @mxl111sf_i2c_bitbang_sendbyte._entry.105, ptr @mxl111sf_i2c_bitbang_sendbyte._entry.91, ptr @mxl111sf_i2c_bitbang_sendbyte._entry.93, ptr @mxl111sf_i2c_bitbang_sendbyte._entry.95, ptr @mxl111sf_i2c_bitbang_sendbyte._entry.97, ptr @mxl111sf_i2c_bitbang_sendbyte._entry.99, ptr @mxl111sf_i2c_bitbang_sendbyte._entry_ptr, ptr @mxl111sf_i2c_bitbang_sendbyte._entry_ptr.100, ptr @mxl111sf_i2c_bitbang_sendbyte._entry_ptr.102, ptr @mxl111sf_i2c_bitbang_sendbyte._entry_ptr.104, ptr @mxl111sf_i2c_bitbang_sendbyte._entry_ptr.106, ptr @mxl111sf_i2c_bitbang_sendbyte._entry_ptr.92, ptr @mxl111sf_i2c_bitbang_sendbyte._entry_ptr.94, ptr @mxl111sf_i2c_bitbang_sendbyte._entry_ptr.96, ptr @mxl111sf_i2c_bitbang_sendbyte._entry_ptr.98, ptr @mxl111sf_i2c_check_fifo._entry, ptr @mxl111sf_i2c_check_fifo._entry.64, ptr @mxl111sf_i2c_check_fifo._entry_ptr, ptr @mxl111sf_i2c_check_fifo._entry_ptr.66, ptr @mxl111sf_i2c_check_status._entry, ptr @mxl111sf_i2c_check_status._entry_ptr, ptr @mxl111sf_i2c_get_data._entry, ptr @mxl111sf_i2c_get_data._entry_ptr, ptr @mxl111sf_i2c_hw_xfer_msg._entry, ptr @mxl111sf_i2c_hw_xfer_msg._entry.10, ptr @mxl111sf_i2c_hw_xfer_msg._entry.13, ptr @mxl111sf_i2c_hw_xfer_msg._entry.16, ptr @mxl111sf_i2c_hw_xfer_msg._entry.19, ptr @mxl111sf_i2c_hw_xfer_msg._entry.21, ptr @mxl111sf_i2c_hw_xfer_msg._entry.24, ptr @mxl111sf_i2c_hw_xfer_msg._entry.26, ptr @mxl111sf_i2c_hw_xfer_msg._entry.29, ptr @mxl111sf_i2c_hw_xfer_msg._entry.32, ptr @mxl111sf_i2c_hw_xfer_msg._entry.34, ptr @mxl111sf_i2c_hw_xfer_msg._entry.36, ptr @mxl111sf_i2c_hw_xfer_msg._entry.39, ptr @mxl111sf_i2c_hw_xfer_msg._entry.42, ptr @mxl111sf_i2c_hw_xfer_msg._entry.44, ptr @mxl111sf_i2c_hw_xfer_msg._entry.47, ptr @mxl111sf_i2c_hw_xfer_msg._entry.49, ptr @mxl111sf_i2c_hw_xfer_msg._entry_ptr, ptr @mxl111sf_i2c_hw_xfer_msg._entry_ptr.12, ptr @mxl111sf_i2c_hw_xfer_msg._entry_ptr.15, ptr @mxl111sf_i2c_hw_xfer_msg._entry_ptr.18, ptr @mxl111sf_i2c_hw_xfer_msg._entry_ptr.20, ptr @mxl111sf_i2c_hw_xfer_msg._entry_ptr.23, ptr @mxl111sf_i2c_hw_xfer_msg._entry_ptr.25, ptr @mxl111sf_i2c_hw_xfer_msg._entry_ptr.28, ptr @mxl111sf_i2c_hw_xfer_msg._entry_ptr.31, ptr @mxl111sf_i2c_hw_xfer_msg._entry_ptr.33, ptr @mxl111sf_i2c_hw_xfer_msg._entry_ptr.35, ptr @mxl111sf_i2c_hw_xfer_msg._entry_ptr.38, ptr @mxl111sf_i2c_hw_xfer_msg._entry_ptr.41, ptr @mxl111sf_i2c_hw_xfer_msg._entry_ptr.43, ptr @mxl111sf_i2c_hw_xfer_msg._entry_ptr.46, ptr @mxl111sf_i2c_hw_xfer_msg._entry_ptr.48, ptr @mxl111sf_i2c_hw_xfer_msg._entry_ptr.50, ptr @mxl111sf_i2c_nack._entry, ptr @mxl111sf_i2c_nack._entry.135, ptr @mxl111sf_i2c_nack._entry.137, ptr @mxl111sf_i2c_nack._entry_ptr, ptr @mxl111sf_i2c_nack._entry_ptr.136, ptr @mxl111sf_i2c_nack._entry_ptr.138, ptr @mxl111sf_i2c_readagain._entry, ptr @mxl111sf_i2c_readagain._entry.57, ptr @mxl111sf_i2c_readagain._entry.60, ptr @mxl111sf_i2c_readagain._entry_ptr, ptr @mxl111sf_i2c_readagain._entry_ptr.59, ptr @mxl111sf_i2c_readagain._entry_ptr.62, ptr @mxl111sf_i2c_send_data._entry, ptr @mxl111sf_i2c_send_data._entry_ptr, ptr @mxl111sf_i2c_start._entry, ptr @mxl111sf_i2c_start._entry.83, ptr @mxl111sf_i2c_start._entry.85, ptr @mxl111sf_i2c_start._entry.87, ptr @mxl111sf_i2c_start._entry_ptr, ptr @mxl111sf_i2c_start._entry_ptr.84, ptr @mxl111sf_i2c_start._entry_ptr.86, ptr @mxl111sf_i2c_start._entry_ptr.88, ptr @mxl111sf_i2c_stop._entry, ptr @mxl111sf_i2c_stop._entry.108, ptr @mxl111sf_i2c_stop._entry.110, ptr @mxl111sf_i2c_stop._entry.112, ptr @mxl111sf_i2c_stop._entry.114, ptr @mxl111sf_i2c_stop._entry_ptr, ptr @mxl111sf_i2c_stop._entry_ptr.109, ptr @mxl111sf_i2c_stop._entry_ptr.111, ptr @mxl111sf_i2c_stop._entry_ptr.113, ptr @mxl111sf_i2c_stop._entry_ptr.115, ptr @mxl111sf_i2c_sw_xfer_msg._entry, ptr @mxl111sf_i2c_sw_xfer_msg._entry.68, ptr @mxl111sf_i2c_sw_xfer_msg._entry.70, ptr @mxl111sf_i2c_sw_xfer_msg._entry.72, ptr @mxl111sf_i2c_sw_xfer_msg._entry.74, ptr @mxl111sf_i2c_sw_xfer_msg._entry.76, ptr @mxl111sf_i2c_sw_xfer_msg._entry.78, ptr @mxl111sf_i2c_sw_xfer_msg._entry.80, ptr @mxl111sf_i2c_sw_xfer_msg._entry_ptr, ptr @mxl111sf_i2c_sw_xfer_msg._entry_ptr.69, ptr @mxl111sf_i2c_sw_xfer_msg._entry_ptr.71, ptr @mxl111sf_i2c_sw_xfer_msg._entry_ptr.73, ptr @mxl111sf_i2c_sw_xfer_msg._entry_ptr.75, ptr @mxl111sf_i2c_sw_xfer_msg._entry_ptr.77, ptr @mxl111sf_i2c_sw_xfer_msg._entry_ptr.79, ptr @mxl111sf_i2c_sw_xfer_msg._entry_ptr.81, ptr @mxl111sf_i2c_xfer._entry, ptr @mxl111sf_i2c_xfer._entry.3, ptr @mxl111sf_i2c_xfer._entry_ptr, ptr @mxl111sf_i2c_xfer._entry_ptr.5, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.4, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.11, ptr @.str.14, ptr @.str.17, ptr @.str.22, ptr @.str.27, ptr @.str.30, ptr @.str.37, ptr @.str.40, ptr @.str.45, ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @.str.54, ptr @.str.55, ptr @.str.56, ptr @.str.58, ptr @.str.61, ptr @.str.63, ptr @.str.65, ptr @.str.67, ptr @.str.82, ptr @.str.89, ptr @.str.90, ptr @.str.107, ptr @.str.116, ptr @.str.125, ptr @.str.134], section "llvm.metadata"
@0 = internal global [101 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mxl111sf_i2c_xfer._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.439 to i32), i32 ptrtoint (ptr @___asan_gen_.440 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.433 to i32), i32 ptrtoint (ptr @___asan_gen_.440 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.433 to i32), i32 ptrtoint (ptr @___asan_gen_.440 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.433 to i32), i32 ptrtoint (ptr @___asan_gen_.440 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mxl111sf_i2c_xfer._entry.3 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.439 to i32), i32 ptrtoint (ptr @___asan_gen_.440 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 87, i32 128, i32 ptrtoint (ptr @___asan_gen_.433 to i32), i32 ptrtoint (ptr @___asan_gen_.440 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.433 to i32), i32 ptrtoint (ptr @___asan_gen_.440 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.433 to i32), i32 ptrtoint (ptr @___asan_gen_.440 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mxl111sf_i2c_hw_xfer_msg._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.439 to i32), i32 ptrtoint (ptr @___asan_gen_.440 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 59, i32 96, i32 ptrtoint (ptr @___asan_gen_.433 to i32), i32 ptrtoint (ptr @___asan_gen_.440 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.433 to i32), i32 ptrtoint (ptr @___asan_gen_.440 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mxl111sf_i2c_hw_xfer_msg._entry.10 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.439 to i32), i32 ptrtoint (ptr @___asan_gen_.440 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.433 to i32), i32 ptrtoint (ptr @___asan_gen_.440 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mxl111sf_i2c_hw_xfer_msg._entry.13 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.439 to i32), i32 ptrtoint (ptr @___asan_gen_.440 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.433 to i32), i32 ptrtoint (ptr @___asan_gen_.440 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mxl111sf_i2c_hw_xfer_msg._entry.16 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.439 to i32), i32 ptrtoint (ptr @___asan_gen_.440 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.433 to i32), i32 ptrtoint (ptr @___asan_gen_.440 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mxl111sf_i2c_hw_xfer_msg._entry.19 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.439 to i32), i32 ptrtoint (ptr @___asan_gen_.440 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mxl111sf_i2c_hw_xfer_msg._entry.21 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.439 to i32), i32 ptrtoint (ptr @___asan_gen_.440 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.433 to i32), i32 ptrtoint (ptr @___asan_gen_.440 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mxl111sf_i2c_hw_xfer_msg._entry.24 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.439 to i32), i32 ptrtoint (ptr @___asan_gen_.440 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mxl111sf_i2c_hw_xfer_msg._entry.26 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.439 to i32), i32 ptrtoint (ptr @___asan_gen_.440 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.433 to i32), i32 ptrtoint (ptr @___asan_gen_.440 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mxl111sf_i2c_hw_xfer_msg._entry.29 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.439 to i32), i32 ptrtoint (ptr @___asan_gen_.440 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.433 to i32), i32 ptrtoint (ptr @___asan_gen_.440 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mxl111sf_i2c_hw_xfer_msg._entry.32 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.439 to i32), i32 ptrtoint (ptr @___asan_gen_.440 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mxl111sf_i2c_hw_xfer_msg._entry.34 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.439 to i32), i32 ptrtoint (ptr @___asan_gen_.440 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mxl111sf_i2c_hw_xfer_msg._entry.36 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.439 to i32), i32 ptrtoint (ptr @___asan_gen_.440 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.433 to i32), i32 ptrtoint (ptr @___asan_gen_.440 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mxl111sf_i2c_hw_xfer_msg._entry.39 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.439 to i32), i32 ptrtoint (ptr @___asan_gen_.440 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.433 to i32), i32 ptrtoint (ptr @___asan_gen_.440 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mxl111sf_i2c_hw_xfer_msg._entry.42 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.439 to i32), i32 ptrtoint (ptr @___asan_gen_.440 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mxl111sf_i2c_hw_xfer_msg._entry.44 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.439 to i32), i32 ptrtoint (ptr @___asan_gen_.440 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.433 to i32), i32 ptrtoint (ptr @___asan_gen_.440 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mxl111sf_i2c_hw_xfer_msg._entry.47 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.439 to i32), i32 ptrtoint (ptr @___asan_gen_.440 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mxl111sf_i2c_hw_xfer_msg._entry.49 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.439 to i32), i32 ptrtoint (ptr @___asan_gen_.440 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mxl111sf_i2c_send_data._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.439 to i32), i32 ptrtoint (ptr @___asan_gen_.440 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.433 to i32), i32 ptrtoint (ptr @___asan_gen_.440 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mxl111sf_i2c_check_status._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.439 to i32), i32 ptrtoint (ptr @___asan_gen_.440 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.433 to i32), i32 ptrtoint (ptr @___asan_gen_.440 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.433 to i32), i32 ptrtoint (ptr @___asan_gen_.440 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mxl111sf_i2c_get_data._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.439 to i32), i32 ptrtoint (ptr @___asan_gen_.440 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.433 to i32), i32 ptrtoint (ptr @___asan_gen_.440 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mxl111sf_i2c_readagain._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.439 to i32), i32 ptrtoint (ptr @___asan_gen_.440 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.433 to i32), i32 ptrtoint (ptr @___asan_gen_.440 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.433 to i32), i32 ptrtoint (ptr @___asan_gen_.440 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mxl111sf_i2c_readagain._entry.57 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.439 to i32), i32 ptrtoint (ptr @___asan_gen_.440 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.433 to i32), i32 ptrtoint (ptr @___asan_gen_.440 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mxl111sf_i2c_readagain._entry.60 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.439 to i32), i32 ptrtoint (ptr @___asan_gen_.440 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.433 to i32), i32 ptrtoint (ptr @___asan_gen_.440 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mxl111sf_i2c_check_fifo._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.439 to i32), i32 ptrtoint (ptr @___asan_gen_.440 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.433 to i32), i32 ptrtoint (ptr @___asan_gen_.440 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mxl111sf_i2c_check_fifo._entry.64 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.439 to i32), i32 ptrtoint (ptr @___asan_gen_.440 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.433 to i32), i32 ptrtoint (ptr @___asan_gen_.440 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mxl111sf_i2c_sw_xfer_msg._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.439 to i32), i32 ptrtoint (ptr @___asan_gen_.440 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.433 to i32), i32 ptrtoint (ptr @___asan_gen_.440 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mxl111sf_i2c_sw_xfer_msg._entry.68 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.439 to i32), i32 ptrtoint (ptr @___asan_gen_.440 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mxl111sf_i2c_sw_xfer_msg._entry.70 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.439 to i32), i32 ptrtoint (ptr @___asan_gen_.440 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mxl111sf_i2c_sw_xfer_msg._entry.72 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.439 to i32), i32 ptrtoint (ptr @___asan_gen_.440 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mxl111sf_i2c_sw_xfer_msg._entry.74 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.439 to i32), i32 ptrtoint (ptr @___asan_gen_.440 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mxl111sf_i2c_sw_xfer_msg._entry.76 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.439 to i32), i32 ptrtoint (ptr @___asan_gen_.440 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mxl111sf_i2c_sw_xfer_msg._entry.78 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.439 to i32), i32 ptrtoint (ptr @___asan_gen_.440 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mxl111sf_i2c_sw_xfer_msg._entry.80 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.439 to i32), i32 ptrtoint (ptr @___asan_gen_.440 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mxl111sf_i2c_start._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.439 to i32), i32 ptrtoint (ptr @___asan_gen_.440 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.82 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.433 to i32), i32 ptrtoint (ptr @___asan_gen_.440 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mxl111sf_i2c_start._entry.83 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.439 to i32), i32 ptrtoint (ptr @___asan_gen_.440 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mxl111sf_i2c_start._entry.85 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.439 to i32), i32 ptrtoint (ptr @___asan_gen_.440 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mxl111sf_i2c_start._entry.87 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.439 to i32), i32 ptrtoint (ptr @___asan_gen_.440 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mxl111sf_i2c_bitbang_sendbyte._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.439 to i32), i32 ptrtoint (ptr @___asan_gen_.440 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.89 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.433 to i32), i32 ptrtoint (ptr @___asan_gen_.440 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.90 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.433 to i32), i32 ptrtoint (ptr @___asan_gen_.440 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mxl111sf_i2c_bitbang_sendbyte._entry.91 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.439 to i32), i32 ptrtoint (ptr @___asan_gen_.440 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mxl111sf_i2c_bitbang_sendbyte._entry.93 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.439 to i32), i32 ptrtoint (ptr @___asan_gen_.440 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mxl111sf_i2c_bitbang_sendbyte._entry.95 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.439 to i32), i32 ptrtoint (ptr @___asan_gen_.440 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mxl111sf_i2c_bitbang_sendbyte._entry.97 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.439 to i32), i32 ptrtoint (ptr @___asan_gen_.440 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mxl111sf_i2c_bitbang_sendbyte._entry.99 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.439 to i32), i32 ptrtoint (ptr @___asan_gen_.440 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mxl111sf_i2c_bitbang_sendbyte._entry.101 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.439 to i32), i32 ptrtoint (ptr @___asan_gen_.440 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mxl111sf_i2c_bitbang_sendbyte._entry.103 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.439 to i32), i32 ptrtoint (ptr @___asan_gen_.440 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mxl111sf_i2c_bitbang_sendbyte._entry.105 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.439 to i32), i32 ptrtoint (ptr @___asan_gen_.440 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mxl111sf_i2c_stop._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.439 to i32), i32 ptrtoint (ptr @___asan_gen_.440 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.107 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.433 to i32), i32 ptrtoint (ptr @___asan_gen_.440 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mxl111sf_i2c_stop._entry.108 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.439 to i32), i32 ptrtoint (ptr @___asan_gen_.440 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mxl111sf_i2c_stop._entry.110 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.439 to i32), i32 ptrtoint (ptr @___asan_gen_.440 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mxl111sf_i2c_stop._entry.112 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.439 to i32), i32 ptrtoint (ptr @___asan_gen_.440 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mxl111sf_i2c_stop._entry.114 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.439 to i32), i32 ptrtoint (ptr @___asan_gen_.440 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mxl111sf_i2c_bitbang_recvbyte._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.439 to i32), i32 ptrtoint (ptr @___asan_gen_.440 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.116 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.433 to i32), i32 ptrtoint (ptr @___asan_gen_.440 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mxl111sf_i2c_bitbang_recvbyte._entry.117 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.439 to i32), i32 ptrtoint (ptr @___asan_gen_.440 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mxl111sf_i2c_bitbang_recvbyte._entry.119 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.439 to i32), i32 ptrtoint (ptr @___asan_gen_.440 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.405 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mxl111sf_i2c_bitbang_recvbyte._entry.121 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.439 to i32), i32 ptrtoint (ptr @___asan_gen_.440 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.408 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mxl111sf_i2c_bitbang_recvbyte._entry.123 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.439 to i32), i32 ptrtoint (ptr @___asan_gen_.440 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.411 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mxl111sf_i2c_ack._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.439 to i32), i32 ptrtoint (ptr @___asan_gen_.440 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.417 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.125 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.433 to i32), i32 ptrtoint (ptr @___asan_gen_.440 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.417 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mxl111sf_i2c_ack._entry.126 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.439 to i32), i32 ptrtoint (ptr @___asan_gen_.440 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mxl111sf_i2c_ack._entry.128 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.439 to i32), i32 ptrtoint (ptr @___asan_gen_.440 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.423 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mxl111sf_i2c_ack._entry.130 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.439 to i32), i32 ptrtoint (ptr @___asan_gen_.440 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.426 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mxl111sf_i2c_ack._entry.132 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.439 to i32), i32 ptrtoint (ptr @___asan_gen_.440 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mxl111sf_i2c_nack._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.439 to i32), i32 ptrtoint (ptr @___asan_gen_.440 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.435 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.134 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.433 to i32), i32 ptrtoint (ptr @___asan_gen_.440 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.435 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mxl111sf_i2c_nack._entry.135 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.439 to i32), i32 ptrtoint (ptr @___asan_gen_.440 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.438 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mxl111sf_i2c_nack._entry.137 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.439 to i32), i32 ptrtoint (ptr @___asan_gen_.440 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.441 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mxl111sf_i2c_xfer(ptr nocapture noundef readonly %adap, ptr nocapture noundef readonly %msg, i32 noundef %num) local_unnamed_addr #0 align 64 {
entry:
  %b.i.i = alloca i8, align 1
  %data.i.i = alloca i8, align 1
  %buf.i888.i = alloca [26 x i8], align 1
  %buf.i105.i.i = alloca [26 x i8], align 1
  %buf.i.i.i = alloca [26 x i8], align 1
  %i2c_w_data.i.i = alloca [26 x i8], align 1
  %i2c_r_data.i.i = alloca [24 x i8], align 1
  %buf.i851.i = alloca [26 x i8], align 1
  %buf.i827.i = alloca [26 x i8], align 1
  %buf.i802.i = alloca [26 x i8], align 1
  %buf.i777.i = alloca [26 x i8], align 1
  %buf.i.i = alloca [26 x i8], align 1
  %buf.i = alloca [26 x i8], align 1
  %i2c_r_data.i = alloca [24 x i8], align 1
  %readbuff.i = alloca [26 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.i2c_adapter, ptr %adap, i32 0, i32 9, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %priv = getelementptr inbounds %struct.dvb_usb_device, ptr %1, i32 0, i32 15
  %2 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %priv, align 8
  %chip_rev = getelementptr inbounds %struct.mxl111sf_state, ptr %3, i32 0, i32 5
  %4 = ptrtoint ptr %chip_rev to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %chip_rev, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %5)
  %cmp = icmp ugt i8 %5, 1
  %i2c_mutex = getelementptr inbounds %struct.dvb_usb_device, ptr %1, i32 0, i32 9
  %call2 = tail call i32 @mutex_lock_interruptible_nested(ptr noundef %i2c_mutex, i32 noundef 0) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %cmp3 = icmp slt i32 %call2, 0
  br i1 %cmp3, label %entry.cleanup_crit_edge, label %for.cond.preheader

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

for.cond.preheader:                               ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %num)
  %cmp5160 = icmp sgt i32 %num, 0
  br i1 %cmp5160, label %for.body.lr.ph, label %for.cond.preheader.for.end_crit_edge

for.cond.preheader.for.end_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %6 = getelementptr inbounds [26 x i8], ptr %buf.i, i32 0, i32 1
  %7 = getelementptr inbounds [26 x i8], ptr %buf.i, i32 0, i32 2
  %8 = getelementptr inbounds [26 x i8], ptr %buf.i, i32 0, i32 3
  %9 = getelementptr inbounds [26 x i8], ptr %buf.i, i32 0, i32 4
  %10 = getelementptr inbounds [26 x i8], ptr %buf.i, i32 0, i32 5
  %11 = getelementptr inbounds [26 x i8], ptr %buf.i, i32 0, i32 6
  %12 = getelementptr inbounds [26 x i8], ptr %buf.i, i32 0, i32 7
  %13 = getelementptr inbounds [26 x i8], ptr %buf.i, i32 0, i32 8
  %14 = getelementptr inbounds [26 x i8], ptr %buf.i, i32 0, i32 9
  %15 = getelementptr inbounds [26 x i8], ptr %buf.i, i32 0, i32 10
  %16 = getelementptr inbounds [26 x i8], ptr %buf.i, i32 0, i32 11
  %17 = getelementptr inbounds [26 x i8], ptr %buf.i, i32 0, i32 12
  %18 = getelementptr inbounds [26 x i8], ptr %buf.i, i32 0, i32 13
  %19 = getelementptr inbounds [26 x i8], ptr %buf.i, i32 0, i32 14
  %20 = getelementptr inbounds [26 x i8], ptr %buf.i, i32 0, i32 15
  %21 = getelementptr inbounds [26 x i8], ptr %buf.i, i32 0, i32 16
  %22 = getelementptr inbounds [26 x i8], ptr %buf.i, i32 0, i32 17
  %23 = getelementptr inbounds [26 x i8], ptr %buf.i, i32 0, i32 18
  %24 = getelementptr inbounds [26 x i8], ptr %buf.i, i32 0, i32 19
  %25 = getelementptr inbounds [26 x i8], ptr %buf.i, i32 0, i32 20
  %26 = getelementptr inbounds [26 x i8], ptr %buf.i, i32 0, i32 21
  %27 = getelementptr inbounds [26 x i8], ptr %buf.i, i32 0, i32 22
  %28 = getelementptr inbounds [26 x i8], ptr %buf.i, i32 0, i32 23
  %29 = getelementptr inbounds [26 x i8], ptr %buf.i, i32 0, i32 24
  %30 = getelementptr inbounds [26 x i8], ptr %buf.i, i32 0, i32 25
  %31 = getelementptr inbounds [26 x i8], ptr %buf.i.i, i32 0, i32 1
  %32 = getelementptr inbounds [26 x i8], ptr %buf.i.i, i32 0, i32 2
  %33 = getelementptr inbounds [26 x i8], ptr %buf.i.i, i32 0, i32 3
  %34 = getelementptr inbounds [26 x i8], ptr %buf.i.i, i32 0, i32 4
  %35 = getelementptr inbounds [26 x i8], ptr %buf.i.i, i32 0, i32 5
  %36 = getelementptr inbounds i8, ptr %buf.i.i, i32 6
  %37 = getelementptr inbounds [26 x i8], ptr %buf.i777.i, i32 0, i32 1
  %38 = getelementptr inbounds [26 x i8], ptr %buf.i777.i, i32 0, i32 2
  %39 = getelementptr inbounds [26 x i8], ptr %buf.i777.i, i32 0, i32 3
  %40 = getelementptr inbounds [26 x i8], ptr %buf.i777.i, i32 0, i32 4
  %41 = getelementptr inbounds [26 x i8], ptr %buf.i777.i, i32 0, i32 5
  %42 = getelementptr inbounds i8, ptr %buf.i777.i, i32 6
  %43 = getelementptr inbounds [26 x i8], ptr %buf.i802.i, i32 0, i32 1
  %44 = getelementptr inbounds [26 x i8], ptr %buf.i802.i, i32 0, i32 2
  %45 = getelementptr inbounds [26 x i8], ptr %buf.i802.i, i32 0, i32 3
  %46 = getelementptr inbounds [26 x i8], ptr %buf.i802.i, i32 0, i32 4
  %47 = getelementptr inbounds [26 x i8], ptr %buf.i802.i, i32 0, i32 5
  %48 = getelementptr inbounds i8, ptr %buf.i802.i, i32 6
  %49 = getelementptr inbounds [26 x i8], ptr %buf.i827.i, i32 0, i32 1
  %50 = getelementptr inbounds [26 x i8], ptr %buf.i827.i, i32 0, i32 2
  %51 = getelementptr inbounds [26 x i8], ptr %buf.i827.i, i32 0, i32 3
  %52 = getelementptr inbounds [26 x i8], ptr %buf.i827.i, i32 0, i32 4
  %53 = getelementptr inbounds [26 x i8], ptr %buf.i827.i, i32 0, i32 5
  %54 = getelementptr inbounds i8, ptr %buf.i827.i, i32 6
  %55 = getelementptr inbounds [26 x i8], ptr %buf.i851.i, i32 0, i32 1
  %56 = getelementptr inbounds [26 x i8], ptr %buf.i851.i, i32 0, i32 2
  %57 = getelementptr inbounds [26 x i8], ptr %buf.i851.i, i32 0, i32 3
  %58 = getelementptr inbounds [26 x i8], ptr %buf.i851.i, i32 0, i32 4
  %59 = getelementptr inbounds [26 x i8], ptr %buf.i851.i, i32 0, i32 5
  %60 = getelementptr inbounds i8, ptr %buf.i851.i, i32 6
  %61 = getelementptr inbounds [26 x i8], ptr %i2c_w_data.i.i, i32 0, i32 1
  %62 = getelementptr inbounds [26 x i8], ptr %i2c_w_data.i.i, i32 0, i32 2
  %63 = getelementptr inbounds [26 x i8], ptr %buf.i.i.i, i32 0, i32 1
  %64 = getelementptr inbounds [26 x i8], ptr %buf.i.i.i, i32 0, i32 2
  %65 = getelementptr inbounds [26 x i8], ptr %buf.i.i.i, i32 0, i32 3
  %66 = getelementptr inbounds [26 x i8], ptr %buf.i.i.i, i32 0, i32 4
  %67 = getelementptr inbounds [26 x i8], ptr %buf.i.i.i, i32 0, i32 5
  %68 = getelementptr inbounds [26 x i8], ptr %buf.i.i.i, i32 0, i32 6
  %69 = getelementptr inbounds [26 x i8], ptr %buf.i.i.i, i32 0, i32 7
  %70 = getelementptr inbounds [26 x i8], ptr %buf.i.i.i, i32 0, i32 8
  %71 = getelementptr inbounds i8, ptr %buf.i.i.i, i32 9
  %72 = getelementptr inbounds [26 x i8], ptr %buf.i105.i.i, i32 0, i32 1
  %73 = getelementptr inbounds [26 x i8], ptr %buf.i105.i.i, i32 0, i32 2
  %74 = getelementptr inbounds [26 x i8], ptr %buf.i105.i.i, i32 0, i32 3
  %75 = getelementptr inbounds [26 x i8], ptr %buf.i105.i.i, i32 0, i32 4
  %76 = getelementptr inbounds [26 x i8], ptr %buf.i105.i.i, i32 0, i32 5
  %77 = getelementptr inbounds i8, ptr %buf.i105.i.i, i32 6
  %78 = getelementptr inbounds [26 x i8], ptr %buf.i888.i, i32 0, i32 1
  %79 = getelementptr inbounds [26 x i8], ptr %buf.i888.i, i32 0, i32 2
  %80 = getelementptr inbounds [26 x i8], ptr %buf.i888.i, i32 0, i32 3
  %81 = getelementptr inbounds [26 x i8], ptr %buf.i888.i, i32 0, i32 4
  %82 = getelementptr inbounds [26 x i8], ptr %buf.i888.i, i32 0, i32 5
  %83 = getelementptr inbounds i8, ptr %buf.i888.i, i32 6
  %arrayidx172.i = getelementptr inbounds [26 x i8], ptr %buf.i, i32 0, i32 2
  %arrayidx180.i = getelementptr inbounds [26 x i8], ptr %buf.i, i32 0, i32 3
  %arrayidx199.i = getelementptr inbounds [26 x i8], ptr %buf.i, i32 0, i32 4
  %arrayidx172.i.1 = getelementptr inbounds [26 x i8], ptr %buf.i, i32 0, i32 5
  %arrayidx180.i.1 = getelementptr inbounds [26 x i8], ptr %buf.i, i32 0, i32 6
  %arrayidx199.i.1 = getelementptr inbounds [26 x i8], ptr %buf.i, i32 0, i32 7
  %arrayidx172.i.2 = getelementptr inbounds [26 x i8], ptr %buf.i, i32 0, i32 8
  %arrayidx180.i.2 = getelementptr inbounds [26 x i8], ptr %buf.i, i32 0, i32 9
  %arrayidx199.i.2 = getelementptr inbounds [26 x i8], ptr %buf.i, i32 0, i32 10
  %arrayidx172.i.3 = getelementptr inbounds [26 x i8], ptr %buf.i, i32 0, i32 11
  %arrayidx180.i.3 = getelementptr inbounds [26 x i8], ptr %buf.i, i32 0, i32 12
  %arrayidx199.i.3 = getelementptr inbounds [26 x i8], ptr %buf.i, i32 0, i32 13
  %arrayidx172.i.4 = getelementptr inbounds [26 x i8], ptr %buf.i, i32 0, i32 14
  %arrayidx180.i.4 = getelementptr inbounds [26 x i8], ptr %buf.i, i32 0, i32 15
  %arrayidx199.i.4 = getelementptr inbounds [26 x i8], ptr %buf.i, i32 0, i32 16
  %arrayidx172.i.5 = getelementptr inbounds [26 x i8], ptr %buf.i, i32 0, i32 17
  %arrayidx180.i.5 = getelementptr inbounds [26 x i8], ptr %buf.i, i32 0, i32 18
  %arrayidx199.i.5 = getelementptr inbounds [26 x i8], ptr %buf.i, i32 0, i32 19
  %arrayidx172.i.6 = getelementptr inbounds [26 x i8], ptr %buf.i, i32 0, i32 20
  %arrayidx180.i.6 = getelementptr inbounds [26 x i8], ptr %buf.i, i32 0, i32 21
  %arrayidx199.i.6 = getelementptr inbounds [26 x i8], ptr %buf.i, i32 0, i32 22
  %arrayidx508.i = getelementptr inbounds [26 x i8], ptr %buf.i, i32 0, i32 2
  %arrayidx511.i = getelementptr inbounds [26 x i8], ptr %buf.i, i32 0, i32 3
  %arrayidx514.i = getelementptr inbounds [26 x i8], ptr %buf.i, i32 0, i32 4
  %arrayidx508.i.1 = getelementptr inbounds [26 x i8], ptr %buf.i, i32 0, i32 5
  %arrayidx511.i.1 = getelementptr inbounds [26 x i8], ptr %buf.i, i32 0, i32 6
  %arrayidx514.i.1 = getelementptr inbounds [26 x i8], ptr %buf.i, i32 0, i32 7
  %arrayidx508.i.2 = getelementptr inbounds [26 x i8], ptr %buf.i, i32 0, i32 8
  %arrayidx511.i.2 = getelementptr inbounds [26 x i8], ptr %buf.i, i32 0, i32 9
  %arrayidx514.i.2 = getelementptr inbounds [26 x i8], ptr %buf.i, i32 0, i32 10
  %arrayidx508.i.3 = getelementptr inbounds [26 x i8], ptr %buf.i, i32 0, i32 11
  %arrayidx511.i.3 = getelementptr inbounds [26 x i8], ptr %buf.i, i32 0, i32 12
  %arrayidx514.i.3 = getelementptr inbounds [26 x i8], ptr %buf.i, i32 0, i32 13
  %arrayidx508.i.4 = getelementptr inbounds [26 x i8], ptr %buf.i, i32 0, i32 14
  %arrayidx511.i.4 = getelementptr inbounds [26 x i8], ptr %buf.i, i32 0, i32 15
  %arrayidx514.i.4 = getelementptr inbounds [26 x i8], ptr %buf.i, i32 0, i32 16
  %arrayidx508.i.5 = getelementptr inbounds [26 x i8], ptr %buf.i, i32 0, i32 17
  %arrayidx511.i.5 = getelementptr inbounds [26 x i8], ptr %buf.i, i32 0, i32 18
  %arrayidx514.i.5 = getelementptr inbounds [26 x i8], ptr %buf.i, i32 0, i32 19
  %arrayidx508.i.6 = getelementptr inbounds [26 x i8], ptr %buf.i, i32 0, i32 20
  %arrayidx511.i.6 = getelementptr inbounds [26 x i8], ptr %buf.i, i32 0, i32 21
  %arrayidx514.i.6 = getelementptr inbounds [26 x i8], ptr %buf.i, i32 0, i32 22
  %arrayidx548.i = getelementptr inbounds [24 x i8], ptr %i2c_r_data.i, i32 0, i32 1
  %arrayidx567.i = getelementptr inbounds [24 x i8], ptr %i2c_r_data.i, i32 0, i32 2
  %arrayidx548.i.1 = getelementptr inbounds [24 x i8], ptr %i2c_r_data.i, i32 0, i32 4
  %arrayidx567.i.1 = getelementptr inbounds [24 x i8], ptr %i2c_r_data.i, i32 0, i32 5
  %arrayidx548.i.2 = getelementptr inbounds [24 x i8], ptr %i2c_r_data.i, i32 0, i32 7
  %arrayidx567.i.2 = getelementptr inbounds [24 x i8], ptr %i2c_r_data.i, i32 0, i32 8
  %arrayidx548.i.3 = getelementptr inbounds [24 x i8], ptr %i2c_r_data.i, i32 0, i32 10
  %arrayidx567.i.3 = getelementptr inbounds [24 x i8], ptr %i2c_r_data.i, i32 0, i32 11
  %arrayidx548.i.4 = getelementptr inbounds [24 x i8], ptr %i2c_r_data.i, i32 0, i32 13
  %arrayidx567.i.4 = getelementptr inbounds [24 x i8], ptr %i2c_r_data.i, i32 0, i32 14
  %arrayidx548.i.5 = getelementptr inbounds [24 x i8], ptr %i2c_r_data.i, i32 0, i32 16
  %arrayidx567.i.5 = getelementptr inbounds [24 x i8], ptr %i2c_r_data.i, i32 0, i32 17
  %arrayidx548.i.6 = getelementptr inbounds [24 x i8], ptr %i2c_r_data.i, i32 0, i32 19
  %arrayidx567.i.6 = getelementptr inbounds [24 x i8], ptr %i2c_r_data.i, i32 0, i32 20
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %i.0161 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.i2c_msg, ptr %msg, i32 %i.0161
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %for.body
  call void @llvm.lifetime.start.p0(i64 26, ptr nonnull %buf.i) #5
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %i2c_r_data.i) #5
  %84 = call ptr @memset(ptr %i2c_r_data.i, i32 255, i32 24)
  call void @llvm.lifetime.start.p0(i64 26, ptr nonnull %readbuff.i) #5
  %85 = call ptr @memset(ptr %readbuff.i, i32 255, i32 26)
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @dvb_usb_mxl111sf_debug to i32))
  %86 = load i32, ptr @dvb_usb_mxl111sf_debug, align 4
  %and.i = and i32 %86, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %cond.true.if.end.i_crit_edge, label %do.end.i

cond.true.if.end.i_crit_edge:                     ; preds = %cond.true
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end.i

do.end.i:                                         ; preds = %cond.true
  call void @__sanitizer_cov_trace_pc() #7
  %87 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load2_noabort(i32 %87)
  %88 = load i16, ptr %arrayidx, align 4
  %conv.i = zext i16 %88 to i32
  %flags.i = getelementptr %struct.i2c_msg, ptr %msg, i32 %i.0161, i32 1
  %89 = ptrtoint ptr %flags.i to i32
  call void @__asan_load2_noabort(i32 %89)
  %90 = load i16, ptr %flags.i, align 2
  %91 = and i16 %90, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %91)
  %tobool3.not.i = icmp eq i16 %91, 0
  %len10.i = getelementptr %struct.i2c_msg, ptr %msg, i32 %i.0161, i32 2
  %92 = ptrtoint ptr %len10.i to i32
  call void @__asan_load2_noabort(i32 %92)
  %93 = load i16, ptr %len10.i, align 4
  %conv11.i = zext i16 %93 to i32
  %.conv11.i = select i1 %tobool3.not.i, i32 0, i32 %conv11.i
  %conv11..i = select i1 %tobool3.not.i, i32 %conv11.i, i32 0
  %call.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.8, ptr noundef nonnull @.str.9, i32 noundef %conv.i, i32 noundef %.conv11.i, i32 noundef %conv11..i) #8
  br label %if.end.i

if.end.i:                                         ; preds = %do.end.i, %cond.true.if.end.i_crit_edge
  %94 = call ptr @memset(ptr %19, i32 254, i32 12)
  %95 = ptrtoint ptr %buf.i to i32
  call void @__asan_store1_noabort(i32 %95)
  store i8 -103, ptr %buf.i, align 1
  %96 = ptrtoint ptr %6 to i32
  call void @__asan_store1_noabort(i32 %96)
  store i8 0, ptr %6, align 1
  %97 = ptrtoint ptr %7 to i32
  call void @__asan_store1_noabort(i32 %97)
  store i8 48, ptr %7, align 1
  %98 = ptrtoint ptr %8 to i32
  call void @__asan_store1_noabort(i32 %98)
  store i8 -128, ptr %8, align 1
  %99 = ptrtoint ptr %9 to i32
  call void @__asan_store1_noabort(i32 %99)
  store i8 0, ptr %9, align 1
  %100 = ptrtoint ptr %10 to i32
  call void @__asan_store1_noabort(i32 %100)
  store i8 48, ptr %10, align 1
  %101 = ptrtoint ptr %11 to i32
  call void @__asan_store1_noabort(i32 %101)
  store i8 -127, ptr %11, align 1
  %102 = ptrtoint ptr %12 to i32
  call void @__asan_store1_noabort(i32 %102)
  store i8 0, ptr %12, align 1
  %103 = ptrtoint ptr %13 to i32
  call void @__asan_store1_noabort(i32 %103)
  store i8 20, ptr %13, align 1
  %104 = ptrtoint ptr %14 to i32
  call void @__asan_store1_noabort(i32 %104)
  store i8 -1, ptr %14, align 1
  %105 = ptrtoint ptr %15 to i32
  call void @__asan_store1_noabort(i32 %105)
  store i8 0, ptr %15, align 1
  %106 = ptrtoint ptr %16 to i32
  call void @__asan_store1_noabort(i32 %106)
  store i8 36, ptr %16, align 1
  %107 = ptrtoint ptr %17 to i32
  call void @__asan_store1_noabort(i32 %107)
  store i8 -9, ptr %17, align 1
  %108 = ptrtoint ptr %18 to i32
  call void @__asan_store1_noabort(i32 %108)
  store i8 0, ptr %18, align 1
  %call.i.i = call i32 @mxl111sf_ctrl_msg(ptr noundef %3, i8 noundef zeroext -103, ptr noundef %6, i32 noundef 25, ptr noundef null, i32 noundef 0) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp.i.i = icmp slt i32 %call.i.i, 0
  br i1 %cmp.i.i, label %land.lhs.true.i.i, label %if.end.i.mxl111sf_i2c_send_data.exit.i_crit_edge

if.end.i.mxl111sf_i2c_send_data.exit.i_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %mxl111sf_i2c_send_data.exit.i

land.lhs.true.i.i:                                ; preds = %if.end.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @dvb_usb_mxl111sf_debug to i32))
  %109 = load i32, ptr @dvb_usb_mxl111sf_debug, align 4
  %and.i.i = and i32 %109, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool2.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool2.not.i.i, label %land.lhs.true.i.i.mxl111sf_i2c_send_data.exit.i_crit_edge, label %do.end.i.i

land.lhs.true.i.i.mxl111sf_i2c_send_data.exit.i_crit_edge: ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %mxl111sf_i2c_send_data.exit.i

do.end.i.i:                                       ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #7
  %call3.i.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.51, i32 noundef %call.i.i, i32 noundef 312) #8
  br label %mxl111sf_i2c_send_data.exit.i

mxl111sf_i2c_send_data.exit.i:                    ; preds = %do.end.i.i, %land.lhs.true.i.i.mxl111sf_i2c_send_data.exit.i_crit_edge, %if.end.i.mxl111sf_i2c_send_data.exit.i_crit_edge
  %flags32.i = getelementptr %struct.i2c_msg, ptr %msg, i32 %i.0161, i32 1
  %110 = ptrtoint ptr %flags32.i to i32
  call void @__asan_load2_noabort(i32 %110)
  %111 = load i16, ptr %flags32.i, align 2
  %112 = and i16 %111, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %112)
  %tobool35.not.i = icmp eq i16 %112, 0
  br i1 %tobool35.not.i, label %land.lhs.true.i, label %mxl111sf_i2c_send_data.exit.i.if.end229.i_crit_edge

mxl111sf_i2c_send_data.exit.i.if.end229.i_crit_edge: ; preds = %mxl111sf_i2c_send_data.exit.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end229.i

land.lhs.true.i:                                  ; preds = %mxl111sf_i2c_send_data.exit.i
  %len36.i = getelementptr %struct.i2c_msg, ptr %msg, i32 %i.0161, i32 2
  %113 = ptrtoint ptr %len36.i to i32
  call void @__asan_load2_noabort(i32 %113)
  %114 = load i16, ptr %len36.i, align 4
  %conv37.i = zext i16 %114 to i32
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %114)
  %cmp38.not.i = icmp eq i16 %114, 0
  br i1 %cmp38.not.i, label %land.lhs.true.i.if.end229.i_crit_edge, label %if.then40.i

land.lhs.true.i.if.end229.i_crit_edge:            ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end229.i

if.then40.i:                                      ; preds = %land.lhs.true.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @dvb_usb_mxl111sf_debug to i32))
  %115 = load i32, ptr @dvb_usb_mxl111sf_debug, align 4
  %and41.i = and i32 %115, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and41.i)
  %tobool42.not.i = icmp eq i32 %and41.i, 0
  br i1 %tobool42.not.i, label %if.then40.i.if.end54.i_crit_edge, label %do.end46.i

if.then40.i.if.end54.i_crit_edge:                 ; preds = %if.then40.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end54.i

do.end46.i:                                       ; preds = %if.then40.i
  call void @__sanitizer_cov_trace_pc() #7
  %buf50.i = getelementptr %struct.i2c_msg, ptr %msg, i32 %i.0161, i32 3
  %116 = ptrtoint ptr %buf50.i to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load ptr, ptr %buf50.i, align 4
  %118 = ptrtoint ptr %117 to i32
  call void @__asan_load1_noabort(i32 %118)
  %119 = load i8, ptr %117, align 1
  %conv52.i = zext i8 %119 to i32
  %call53.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.11, ptr noundef nonnull @.str.9, i32 noundef %conv37.i, i32 noundef %conv52.i) #8
  br label %if.end54.i

if.end54.i:                                       ; preds = %do.end46.i, %if.then40.i.if.end54.i_crit_edge
  %120 = ptrtoint ptr %7 to i32
  call void @__asan_store1_noabort(i32 %120)
  store i8 0, ptr %7, align 1
  %121 = ptrtoint ptr %8 to i32
  call void @__asan_store1_noabort(i32 %121)
  store i8 94, ptr %8, align 1
  %122 = ptrtoint ptr %9 to i32
  call void @__asan_store1_noabort(i32 %122)
  store i8 3, ptr %9, align 1
  %123 = ptrtoint ptr %10 to i32
  call void @__asan_store1_noabort(i32 %123)
  store i8 8, ptr %10, align 1
  %124 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load2_noabort(i32 %124)
  %125 = load i16, ptr %arrayidx, align 4
  %conv60.i = trunc i16 %125 to i8
  %126 = ptrtoint ptr %11 to i32
  call void @__asan_store1_noabort(i32 %126)
  store i8 %conv60.i, ptr %11, align 1
  %127 = ptrtoint ptr %12 to i32
  call void @__asan_store1_noabort(i32 %127)
  store i8 0, ptr %12, align 1
  %128 = ptrtoint ptr %13 to i32
  call void @__asan_store1_noabort(i32 %128)
  store i8 -2, ptr %13, align 1
  %129 = ptrtoint ptr %buf.i to i32
  call void @__asan_load1_noabort(i32 %129)
  %130 = load i8, ptr %buf.i, align 1
  %call.i755.i = call i32 @mxl111sf_ctrl_msg(ptr noundef %3, i8 noundef zeroext %130, ptr noundef %6, i32 noundef 25, ptr noundef null, i32 noundef 0) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i755.i)
  %cmp.i756.i = icmp slt i32 %call.i755.i, 0
  br i1 %cmp.i756.i, label %land.lhs.true.i759.i, label %if.end54.i.mxl111sf_i2c_send_data.exit762.i_crit_edge

if.end54.i.mxl111sf_i2c_send_data.exit762.i_crit_edge: ; preds = %if.end54.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %mxl111sf_i2c_send_data.exit762.i

land.lhs.true.i759.i:                             ; preds = %if.end54.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @dvb_usb_mxl111sf_debug to i32))
  %131 = load i32, ptr @dvb_usb_mxl111sf_debug, align 4
  %and.i757.i = and i32 %131, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i757.i)
  %tobool2.not.i758.i = icmp eq i32 %and.i757.i, 0
  br i1 %tobool2.not.i758.i, label %land.lhs.true.i759.i.mxl111sf_i2c_send_data.exit762.i_crit_edge, label %do.end.i761.i

land.lhs.true.i759.i.mxl111sf_i2c_send_data.exit762.i_crit_edge: ; preds = %land.lhs.true.i759.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %mxl111sf_i2c_send_data.exit762.i

do.end.i761.i:                                    ; preds = %land.lhs.true.i759.i
  call void @__sanitizer_cov_trace_pc() #7
  %call3.i760.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.51, i32 noundef %call.i755.i, i32 noundef 312) #8
  br label %mxl111sf_i2c_send_data.exit762.i

mxl111sf_i2c_send_data.exit762.i:                 ; preds = %do.end.i761.i, %land.lhs.true.i759.i.mxl111sf_i2c_send_data.exit762.i_crit_edge, %if.end54.i.mxl111sf_i2c_send_data.exit762.i_crit_edge
  call void @llvm.lifetime.start.p0(i64 26, ptr nonnull %buf.i.i) #5
  %132 = call ptr @memset(ptr %36, i32 255, i32 20)
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @dvb_usb_mxl111sf_debug to i32))
  %133 = load i32, ptr @dvb_usb_mxl111sf_debug, align 4
  %and.i763.i = and i32 %133, 20
  call void @__sanitizer_cov_trace_const_cmp4(i32 20, i32 %and.i763.i)
  %cmp.i764.i = icmp eq i32 %and.i763.i, 20
  br i1 %cmp.i764.i, label %do.end.i766.i, label %mxl111sf_i2c_send_data.exit762.i.if.end.i.i_crit_edge

mxl111sf_i2c_send_data.exit762.i.if.end.i.i_crit_edge: ; preds = %mxl111sf_i2c_send_data.exit762.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end.i.i

do.end.i766.i:                                    ; preds = %mxl111sf_i2c_send_data.exit762.i
  call void @__sanitizer_cov_trace_pc() #7
  %call.i765.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.52, ptr noundef nonnull @.str.53) #8
  br label %if.end.i.i

if.end.i.i:                                       ; preds = %do.end.i766.i, %mxl111sf_i2c_send_data.exit762.i.if.end.i.i_crit_edge
  %134 = ptrtoint ptr %buf.i.i to i32
  call void @__asan_store1_noabort(i32 %134)
  store i8 -35, ptr %buf.i.i, align 1
  %135 = ptrtoint ptr %31 to i32
  call void @__asan_store1_noabort(i32 %135)
  store i8 0, ptr %31, align 1
  %136 = ptrtoint ptr %32 to i32
  call void @__asan_store1_noabort(i32 %136)
  store i8 16, ptr %32, align 1
  %137 = ptrtoint ptr %33 to i32
  call void @__asan_store1_noabort(i32 %137)
  store i8 0, ptr %33, align 1
  %138 = ptrtoint ptr %34 to i32
  call void @__asan_store1_noabort(i32 %138)
  store i8 0, ptr %34, align 1
  %139 = ptrtoint ptr %35 to i32
  call void @__asan_store1_noabort(i32 %139)
  store i8 -2, ptr %35, align 1
  %call.i.i.i = call i32 @mxl111sf_ctrl_msg(ptr noundef %3, i8 noundef zeroext -35, ptr noundef %31, i32 noundef 25, ptr noundef nonnull %buf.i.i, i32 noundef 24) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i)
  %cmp.i.i.i = icmp slt i32 %call.i.i.i, 0
  br i1 %cmp.i.i.i, label %land.lhs.true.i.i.i, label %if.end.i.i.mxl111sf_i2c_check_status.exit.i_crit_edge

if.end.i.i.mxl111sf_i2c_check_status.exit.i_crit_edge: ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %mxl111sf_i2c_check_status.exit.i

land.lhs.true.i.i.i:                              ; preds = %if.end.i.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @dvb_usb_mxl111sf_debug to i32))
  %140 = load i32, ptr @dvb_usb_mxl111sf_debug, align 4
  %and.i.i.i = and i32 %140, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool2.not.i.i.i = icmp eq i32 %and.i.i.i, 0
  br i1 %tobool2.not.i.i.i, label %land.lhs.true.i.i.i.mxl111sf_i2c_check_status.exit.i_crit_edge, label %do.end.i.i.i

land.lhs.true.i.i.i.mxl111sf_i2c_check_status.exit.i_crit_edge: ; preds = %land.lhs.true.i.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %mxl111sf_i2c_check_status.exit.i

do.end.i.i.i:                                     ; preds = %land.lhs.true.i.i.i
  call void @__sanitizer_cov_trace_pc() #7
  %call3.i.i.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.54, i32 noundef %call.i.i.i, i32 noundef 322) #8
  br label %mxl111sf_i2c_check_status.exit.i

mxl111sf_i2c_check_status.exit.i:                 ; preds = %do.end.i.i.i, %land.lhs.true.i.i.i.mxl111sf_i2c_check_status.exit.i_crit_edge, %if.end.i.i.mxl111sf_i2c_check_status.exit.i_crit_edge
  %141 = ptrtoint ptr %31 to i32
  call void @__asan_load1_noabort(i32 %141)
  %142 = load i8, ptr %31, align 1
  call void @llvm.lifetime.end.p0(i64 26, ptr nonnull %buf.i.i) #5
  %143 = and i8 %142, 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %143)
  %cmp68.not.i = icmp eq i8 %143, 0
  br i1 %cmp68.not.i, label %if.end85.i, label %if.then70.i

if.then70.i:                                      ; preds = %mxl111sf_i2c_check_status.exit.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @dvb_usb_mxl111sf_debug to i32))
  %144 = load i32, ptr @dvb_usb_mxl111sf_debug, align 4
  %and71.i = and i32 %144, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and71.i)
  %tobool72.not.i = icmp eq i32 %and71.i, 0
  br i1 %tobool72.not.i, label %if.then70.i.exit.sink.split.i_crit_edge, label %do.end76.i

if.then70.i.exit.sink.split.i_crit_edge:          ; preds = %if.then70.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %exit.sink.split.i

do.end76.i:                                       ; preds = %if.then70.i
  call void @__sanitizer_cov_trace_pc() #7
  %145 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load2_noabort(i32 %145)
  %146 = load i16, ptr %arrayidx, align 4
  %conv79.i = zext i16 %146 to i32
  %call80.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.14, ptr noundef nonnull @.str.9, i32 noundef %conv79.i) #8
  br label %exit.sink.split.i

if.end85.i:                                       ; preds = %mxl111sf_i2c_check_status.exit.i
  %147 = ptrtoint ptr %len36.i to i32
  call void @__asan_load2_noabort(i32 %147)
  %148 = load i16, ptr %len36.i, align 4
  %div753.i = lshr i16 %148, 3
  %149 = and i16 %148, 7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @dvb_usb_mxl111sf_debug to i32))
  %150 = load i32, ptr @dvb_usb_mxl111sf_debug, align 4
  %and92.i = and i32 %150, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and92.i)
  %tobool93.not.i = icmp eq i32 %and92.i, 0
  br i1 %tobool93.not.i, label %if.end85.i.if.end102.i_crit_edge, label %do.end97.i

if.end85.i.if.end102.i_crit_edge:                 ; preds = %if.end85.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end102.i

do.end97.i:                                       ; preds = %if.end85.i
  call void @__sanitizer_cov_trace_pc() #7
  %conv99.i = zext i16 %div753.i to i32
  %conv100.i = zext i16 %149 to i32
  %call101.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.17, ptr noundef nonnull @.str.9, i32 noundef %conv99.i, i32 noundef %conv100.i) #8
  br label %if.end102.i

if.end102.i:                                      ; preds = %do.end97.i, %if.end85.i.if.end102.i_crit_edge
  call void @__sanitizer_cov_trace_const_cmp2(i16 8, i16 %148)
  %cmp106956.not.i = icmp ult i16 %148, 8
  br i1 %cmp106956.not.i, label %if.end102.i.for.end152.i_crit_edge, label %for.cond109.preheader.lr.ph.i

if.end102.i.for.end152.i_crit_edge:               ; preds = %if.end102.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end152.i

for.cond109.preheader.lr.ph.i:                    ; preds = %if.end102.i
  %buf114.i = getelementptr %struct.i2c_msg, ptr %msg, i32 %i.0161, i32 3
  %umax.i = call i16 @llvm.umax.i16(i16 %div753.i, i16 1) #5
  %wide.trip.count.i = zext i16 %umax.i to i32
  br label %for.cond109.preheader.i

for.cond103.i:                                    ; preds = %mxl111sf_i2c_check_status.exit791.i
  %indvars.iv.next.i = add nuw nsw i32 %indvars.iv.i, 1
  %exitcond.not.i = icmp eq i32 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %for.cond103.i.for.end152.i_crit_edge, label %for.cond103.i.for.cond109.preheader.i_crit_edge

for.cond103.i.for.cond109.preheader.i_crit_edge:  ; preds = %for.cond103.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.cond109.preheader.i

for.cond103.i.for.end152.i_crit_edge:             ; preds = %for.cond103.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end152.i

for.cond109.preheader.i:                          ; preds = %for.cond103.i.for.cond109.preheader.i_crit_edge, %for.cond109.preheader.lr.ph.i
  %indvars.iv.i = phi i32 [ 0, %for.cond109.preheader.lr.ph.i ], [ %indvars.iv.next.i, %for.cond103.i.for.cond109.preheader.i_crit_edge ]
  %151 = ptrtoint ptr %buf114.i to i32
  call void @__asan_load4_noabort(i32 %151)
  %152 = load ptr, ptr %buf114.i, align 4
  %mul116.i = shl nuw nsw i32 %indvars.iv.i, 3
  %153 = ptrtoint ptr %7 to i32
  call void @__asan_store1_noabort(i32 %153)
  store i8 12, ptr %7, align 1
  %arrayidx118.i = getelementptr i8, ptr %152, i32 %mul116.i
  %154 = ptrtoint ptr %arrayidx118.i to i32
  call void @__asan_load1_noabort(i32 %154)
  %155 = load i8, ptr %arrayidx118.i, align 1
  %156 = ptrtoint ptr %8 to i32
  call void @__asan_store1_noabort(i32 %156)
  store i8 %155, ptr %8, align 1
  %157 = ptrtoint ptr %9 to i32
  call void @__asan_store1_noabort(i32 %157)
  store i8 0, ptr %9, align 1
  %158 = ptrtoint ptr %10 to i32
  call void @__asan_store1_noabort(i32 %158)
  store i8 12, ptr %10, align 1
  %add117.1.i = or i32 %mul116.i, 1
  %arrayidx118.1.i = getelementptr i8, ptr %152, i32 %add117.1.i
  %159 = ptrtoint ptr %arrayidx118.1.i to i32
  call void @__asan_load1_noabort(i32 %159)
  %160 = load i8, ptr %arrayidx118.1.i, align 1
  %161 = ptrtoint ptr %11 to i32
  call void @__asan_store1_noabort(i32 %161)
  store i8 %160, ptr %11, align 1
  %162 = ptrtoint ptr %12 to i32
  call void @__asan_store1_noabort(i32 %162)
  store i8 0, ptr %12, align 1
  %163 = ptrtoint ptr %13 to i32
  call void @__asan_store1_noabort(i32 %163)
  store i8 12, ptr %13, align 1
  %add117.2.i = or i32 %mul116.i, 2
  %arrayidx118.2.i = getelementptr i8, ptr %152, i32 %add117.2.i
  %164 = ptrtoint ptr %arrayidx118.2.i to i32
  call void @__asan_load1_noabort(i32 %164)
  %165 = load i8, ptr %arrayidx118.2.i, align 1
  %166 = ptrtoint ptr %14 to i32
  call void @__asan_store1_noabort(i32 %166)
  store i8 %165, ptr %14, align 1
  %167 = ptrtoint ptr %15 to i32
  call void @__asan_store1_noabort(i32 %167)
  store i8 0, ptr %15, align 1
  %168 = ptrtoint ptr %16 to i32
  call void @__asan_store1_noabort(i32 %168)
  store i8 12, ptr %16, align 1
  %add117.3.i = or i32 %mul116.i, 3
  %arrayidx118.3.i = getelementptr i8, ptr %152, i32 %add117.3.i
  %169 = ptrtoint ptr %arrayidx118.3.i to i32
  call void @__asan_load1_noabort(i32 %169)
  %170 = load i8, ptr %arrayidx118.3.i, align 1
  %171 = ptrtoint ptr %17 to i32
  call void @__asan_store1_noabort(i32 %171)
  store i8 %170, ptr %17, align 1
  %172 = ptrtoint ptr %18 to i32
  call void @__asan_store1_noabort(i32 %172)
  store i8 0, ptr %18, align 1
  %173 = ptrtoint ptr %19 to i32
  call void @__asan_store1_noabort(i32 %173)
  store i8 12, ptr %19, align 1
  %add117.4.i = or i32 %mul116.i, 4
  %arrayidx118.4.i = getelementptr i8, ptr %152, i32 %add117.4.i
  %174 = ptrtoint ptr %arrayidx118.4.i to i32
  call void @__asan_load1_noabort(i32 %174)
  %175 = load i8, ptr %arrayidx118.4.i, align 1
  %176 = ptrtoint ptr %20 to i32
  call void @__asan_store1_noabort(i32 %176)
  store i8 %175, ptr %20, align 1
  %177 = ptrtoint ptr %21 to i32
  call void @__asan_store1_noabort(i32 %177)
  store i8 0, ptr %21, align 1
  %178 = ptrtoint ptr %22 to i32
  call void @__asan_store1_noabort(i32 %178)
  store i8 12, ptr %22, align 1
  %add117.5.i = or i32 %mul116.i, 5
  %arrayidx118.5.i = getelementptr i8, ptr %152, i32 %add117.5.i
  %179 = ptrtoint ptr %arrayidx118.5.i to i32
  call void @__asan_load1_noabort(i32 %179)
  %180 = load i8, ptr %arrayidx118.5.i, align 1
  %181 = ptrtoint ptr %23 to i32
  call void @__asan_store1_noabort(i32 %181)
  store i8 %180, ptr %23, align 1
  %182 = ptrtoint ptr %24 to i32
  call void @__asan_store1_noabort(i32 %182)
  store i8 0, ptr %24, align 1
  %183 = ptrtoint ptr %25 to i32
  call void @__asan_store1_noabort(i32 %183)
  store i8 12, ptr %25, align 1
  %add117.6.i = or i32 %mul116.i, 6
  %arrayidx118.6.i = getelementptr i8, ptr %152, i32 %add117.6.i
  %184 = ptrtoint ptr %arrayidx118.6.i to i32
  call void @__asan_load1_noabort(i32 %184)
  %185 = load i8, ptr %arrayidx118.6.i, align 1
  %186 = ptrtoint ptr %26 to i32
  call void @__asan_store1_noabort(i32 %186)
  store i8 %185, ptr %26, align 1
  %187 = ptrtoint ptr %27 to i32
  call void @__asan_store1_noabort(i32 %187)
  store i8 0, ptr %27, align 1
  %188 = ptrtoint ptr %28 to i32
  call void @__asan_store1_noabort(i32 %188)
  store i8 12, ptr %28, align 1
  %add117.7.i = or i32 %mul116.i, 7
  %arrayidx118.7.i = getelementptr i8, ptr %152, i32 %add117.7.i
  %189 = ptrtoint ptr %arrayidx118.7.i to i32
  call void @__asan_load1_noabort(i32 %189)
  %190 = load i8, ptr %arrayidx118.7.i, align 1
  %191 = ptrtoint ptr %29 to i32
  call void @__asan_store1_noabort(i32 %191)
  store i8 %190, ptr %29, align 1
  %192 = ptrtoint ptr %30 to i32
  call void @__asan_store1_noabort(i32 %192)
  store i8 0, ptr %30, align 1
  %193 = ptrtoint ptr %buf.i to i32
  call void @__asan_load1_noabort(i32 %193)
  %194 = load i8, ptr %buf.i, align 1
  %call.i768.i = call i32 @mxl111sf_ctrl_msg(ptr noundef %3, i8 noundef zeroext %194, ptr noundef %6, i32 noundef 25, ptr noundef null, i32 noundef 0) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i768.i)
  %cmp.i769.i = icmp slt i32 %call.i768.i, 0
  br i1 %cmp.i769.i, label %land.lhs.true.i772.i, label %for.cond109.preheader.i.mxl111sf_i2c_send_data.exit776.i_crit_edge

for.cond109.preheader.i.mxl111sf_i2c_send_data.exit776.i_crit_edge: ; preds = %for.cond109.preheader.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %mxl111sf_i2c_send_data.exit776.i

land.lhs.true.i772.i:                             ; preds = %for.cond109.preheader.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @dvb_usb_mxl111sf_debug to i32))
  %195 = load i32, ptr @dvb_usb_mxl111sf_debug, align 4
  %and.i770.i = and i32 %195, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i770.i)
  %tobool2.not.i771.i = icmp eq i32 %and.i770.i, 0
  br i1 %tobool2.not.i771.i, label %land.lhs.true.i772.i.mxl111sf_i2c_send_data.exit776.i_crit_edge, label %do.end.i774.i

land.lhs.true.i772.i.mxl111sf_i2c_send_data.exit776.i_crit_edge: ; preds = %land.lhs.true.i772.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %mxl111sf_i2c_send_data.exit776.i

do.end.i774.i:                                    ; preds = %land.lhs.true.i772.i
  call void @__sanitizer_cov_trace_pc() #7
  %call3.i773.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.51, i32 noundef %call.i768.i, i32 noundef 312) #8
  br label %mxl111sf_i2c_send_data.exit776.i

mxl111sf_i2c_send_data.exit776.i:                 ; preds = %do.end.i774.i, %land.lhs.true.i772.i.mxl111sf_i2c_send_data.exit776.i_crit_edge, %for.cond109.preheader.i.mxl111sf_i2c_send_data.exit776.i_crit_edge
  call void @llvm.lifetime.start.p0(i64 26, ptr nonnull %buf.i777.i) #5
  %196 = call ptr @memset(ptr %42, i32 255, i32 20)
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @dvb_usb_mxl111sf_debug to i32))
  %197 = load i32, ptr @dvb_usb_mxl111sf_debug, align 4
  %and.i778.i = and i32 %197, 20
  call void @__sanitizer_cov_trace_const_cmp4(i32 20, i32 %and.i778.i)
  %cmp.i779.i = icmp eq i32 %and.i778.i, 20
  br i1 %cmp.i779.i, label %do.end.i781.i, label %mxl111sf_i2c_send_data.exit776.i.if.end.i784.i_crit_edge

mxl111sf_i2c_send_data.exit776.i.if.end.i784.i_crit_edge: ; preds = %mxl111sf_i2c_send_data.exit776.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end.i784.i

do.end.i781.i:                                    ; preds = %mxl111sf_i2c_send_data.exit776.i
  call void @__sanitizer_cov_trace_pc() #7
  %call.i780.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.52, ptr noundef nonnull @.str.53) #8
  br label %if.end.i784.i

if.end.i784.i:                                    ; preds = %do.end.i781.i, %mxl111sf_i2c_send_data.exit776.i.if.end.i784.i_crit_edge
  %198 = ptrtoint ptr %buf.i777.i to i32
  call void @__asan_store1_noabort(i32 %198)
  store i8 -35, ptr %buf.i777.i, align 1
  %199 = ptrtoint ptr %37 to i32
  call void @__asan_store1_noabort(i32 %199)
  store i8 0, ptr %37, align 1
  %200 = ptrtoint ptr %38 to i32
  call void @__asan_store1_noabort(i32 %200)
  store i8 16, ptr %38, align 1
  %201 = ptrtoint ptr %39 to i32
  call void @__asan_store1_noabort(i32 %201)
  store i8 0, ptr %39, align 1
  %202 = ptrtoint ptr %40 to i32
  call void @__asan_store1_noabort(i32 %202)
  store i8 0, ptr %40, align 1
  %203 = ptrtoint ptr %41 to i32
  call void @__asan_store1_noabort(i32 %203)
  store i8 -2, ptr %41, align 1
  %call.i.i782.i = call i32 @mxl111sf_ctrl_msg(ptr noundef %3, i8 noundef zeroext -35, ptr noundef %37, i32 noundef 25, ptr noundef nonnull %buf.i777.i, i32 noundef 24) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i782.i)
  %cmp.i.i783.i = icmp slt i32 %call.i.i782.i, 0
  br i1 %cmp.i.i783.i, label %land.lhs.true.i.i787.i, label %if.end.i784.i.mxl111sf_i2c_check_status.exit791.i_crit_edge

if.end.i784.i.mxl111sf_i2c_check_status.exit791.i_crit_edge: ; preds = %if.end.i784.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %mxl111sf_i2c_check_status.exit791.i

land.lhs.true.i.i787.i:                           ; preds = %if.end.i784.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @dvb_usb_mxl111sf_debug to i32))
  %204 = load i32, ptr @dvb_usb_mxl111sf_debug, align 4
  %and.i.i785.i = and i32 %204, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i785.i)
  %tobool2.not.i.i786.i = icmp eq i32 %and.i.i785.i, 0
  br i1 %tobool2.not.i.i786.i, label %land.lhs.true.i.i787.i.mxl111sf_i2c_check_status.exit791.i_crit_edge, label %do.end.i.i789.i

land.lhs.true.i.i787.i.mxl111sf_i2c_check_status.exit791.i_crit_edge: ; preds = %land.lhs.true.i.i787.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %mxl111sf_i2c_check_status.exit791.i

do.end.i.i789.i:                                  ; preds = %land.lhs.true.i.i787.i
  call void @__sanitizer_cov_trace_pc() #7
  %call3.i.i788.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.54, i32 noundef %call.i.i782.i, i32 noundef 322) #8
  br label %mxl111sf_i2c_check_status.exit791.i

mxl111sf_i2c_check_status.exit791.i:              ; preds = %do.end.i.i789.i, %land.lhs.true.i.i787.i.mxl111sf_i2c_check_status.exit791.i_crit_edge, %if.end.i784.i.mxl111sf_i2c_check_status.exit791.i_crit_edge
  %205 = ptrtoint ptr %37 to i32
  call void @__asan_load1_noabort(i32 %205)
  %206 = load i8, ptr %37, align 1
  call void @llvm.lifetime.end.p0(i64 26, ptr nonnull %buf.i777.i) #5
  %207 = and i8 %206, 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %207)
  %cmp132.not.i = icmp eq i8 %207, 0
  br i1 %cmp132.not.i, label %for.cond103.i, label %if.then134.i

if.then134.i:                                     ; preds = %mxl111sf_i2c_check_status.exit791.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @dvb_usb_mxl111sf_debug to i32))
  %208 = load i32, ptr @dvb_usb_mxl111sf_debug, align 4
  %and135.i = and i32 %208, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and135.i)
  %tobool136.not.i = icmp eq i32 %and135.i, 0
  br i1 %tobool136.not.i, label %if.then134.i.exit.sink.split.i_crit_edge, label %do.end140.i

if.then134.i.exit.sink.split.i_crit_edge:         ; preds = %if.then134.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %exit.sink.split.i

do.end140.i:                                      ; preds = %if.then134.i
  call void @__sanitizer_cov_trace_pc() #7
  %209 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load2_noabort(i32 %209)
  %210 = load i16, ptr %arrayidx, align 4
  %conv143.i = zext i16 %210 to i32
  %call144.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.14, ptr noundef nonnull @.str.9, i32 noundef %conv143.i) #8
  br label %exit.sink.split.i

for.end152.i:                                     ; preds = %for.cond103.i.for.end152.i_crit_edge, %if.end102.i.for.end152.i_crit_edge
  %ret.0.lcssa.i = phi i32 [ %call.i755.i, %if.end102.i.for.end152.i_crit_edge ], [ %call.i768.i, %for.cond103.i.for.end152.i_crit_edge ]
  %conv104.lcssa.i = phi i32 [ 0, %if.end102.i.for.end152.i_crit_edge ], [ %wide.trip.count.i, %for.cond103.i.for.end152.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %149)
  %tobool153.not.i = icmp eq i16 %149, 0
  br i1 %tobool153.not.i, label %for.end152.i.if.end225.i_crit_edge, label %for.body158.preheader.i

for.end152.i.if.end225.i_crit_edge:               ; preds = %for.end152.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end225.i

for.body158.preheader.i:                          ; preds = %for.end152.i
  %211 = call ptr @memset(ptr %7, i32 254, i32 24)
  %212 = ptrtoint ptr %buf.i to i32
  call void @__asan_store1_noabort(i32 %212)
  store i8 -103, ptr %buf.i, align 1
  %213 = ptrtoint ptr %6 to i32
  call void @__asan_store1_noabort(i32 %213)
  store i8 0, ptr %6, align 1
  %buf173.i = getelementptr %struct.i2c_msg, ptr %msg, i32 %i.0161, i32 3
  %mul175.i = shl nuw nsw i32 %conv104.lcssa.i, 3
  %214 = ptrtoint ptr %arrayidx172.i to i32
  call void @__asan_store1_noabort(i32 %214)
  store i8 12, ptr %arrayidx172.i, align 1
  %215 = ptrtoint ptr %buf173.i to i32
  call void @__asan_load4_noabort(i32 %215)
  %216 = load ptr, ptr %buf173.i, align 4
  %arrayidx177.i = getelementptr i8, ptr %216, i32 %mul175.i
  %217 = ptrtoint ptr %arrayidx177.i to i32
  call void @__asan_load1_noabort(i32 %217)
  %218 = load i8, ptr %arrayidx177.i, align 1
  %219 = ptrtoint ptr %arrayidx180.i to i32
  call void @__asan_store1_noabort(i32 %219)
  store i8 %218, ptr %arrayidx180.i, align 1
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @dvb_usb_mxl111sf_debug to i32))
  %220 = load i32, ptr @dvb_usb_mxl111sf_debug, align 4
  %and181.i = and i32 %220, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and181.i)
  %tobool182.not.i = icmp eq i32 %and181.i, 0
  br i1 %tobool182.not.i, label %for.body158.preheader.i.if.end196.i_crit_edge, label %do.end186.i

for.body158.preheader.i.if.end196.i_crit_edge:    ; preds = %for.body158.preheader.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end196.i

do.end186.i:                                      ; preds = %for.body158.preheader.i
  call void @__sanitizer_cov_trace_pc() #7
  %221 = ptrtoint ptr %arrayidx177.i to i32
  call void @__asan_load1_noabort(i32 %221)
  %222 = load i8, ptr %arrayidx177.i, align 1
  %conv194.i = zext i8 %222 to i32
  %call195.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.22, ptr noundef nonnull @.str.9, i32 noundef %conv104.lcssa.i, i32 noundef 0, i32 noundef %conv194.i) #8
  br label %if.end196.i

if.end196.i:                                      ; preds = %do.end186.i, %for.body158.preheader.i.if.end196.i_crit_edge
  %223 = ptrtoint ptr %arrayidx199.i to i32
  call void @__asan_store1_noabort(i32 %223)
  store i8 0, ptr %arrayidx199.i, align 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 1, i16 %149)
  %exitcond978.not.i = icmp eq i16 %149, 1
  br i1 %exitcond978.not.i, label %if.end196.i.for.end202.i_crit_edge, label %for.body169.i.1

if.end196.i.for.end202.i_crit_edge:               ; preds = %if.end196.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end202.i

for.body169.i.1:                                  ; preds = %if.end196.i
  %224 = ptrtoint ptr %arrayidx172.i.1 to i32
  call void @__asan_store1_noabort(i32 %224)
  store i8 12, ptr %arrayidx172.i.1, align 1
  %225 = ptrtoint ptr %buf173.i to i32
  call void @__asan_load4_noabort(i32 %225)
  %226 = load ptr, ptr %buf173.i, align 4
  %add176.i.1 = or i32 %mul175.i, 1
  %arrayidx177.i.1 = getelementptr i8, ptr %226, i32 %add176.i.1
  %227 = ptrtoint ptr %arrayidx177.i.1 to i32
  call void @__asan_load1_noabort(i32 %227)
  %228 = load i8, ptr %arrayidx177.i.1, align 1
  %229 = ptrtoint ptr %arrayidx180.i.1 to i32
  call void @__asan_store1_noabort(i32 %229)
  store i8 %228, ptr %arrayidx180.i.1, align 1
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @dvb_usb_mxl111sf_debug to i32))
  %230 = load i32, ptr @dvb_usb_mxl111sf_debug, align 4
  %and181.i.1 = and i32 %230, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and181.i.1)
  %tobool182.not.i.1 = icmp eq i32 %and181.i.1, 0
  br i1 %tobool182.not.i.1, label %for.body169.i.1.if.end196.i.1_crit_edge, label %do.end186.i.1

for.body169.i.1.if.end196.i.1_crit_edge:          ; preds = %for.body169.i.1
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end196.i.1

do.end186.i.1:                                    ; preds = %for.body169.i.1
  call void @__sanitizer_cov_trace_pc() #7
  %231 = ptrtoint ptr %arrayidx177.i.1 to i32
  call void @__asan_load1_noabort(i32 %231)
  %232 = load i8, ptr %arrayidx177.i.1, align 1
  %conv194.i.1 = zext i8 %232 to i32
  %call195.i.1 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.22, ptr noundef nonnull @.str.9, i32 noundef %conv104.lcssa.i, i32 noundef 1, i32 noundef %conv194.i.1) #8
  br label %if.end196.i.1

if.end196.i.1:                                    ; preds = %do.end186.i.1, %for.body169.i.1.if.end196.i.1_crit_edge
  %233 = ptrtoint ptr %arrayidx199.i.1 to i32
  call void @__asan_store1_noabort(i32 %233)
  store i8 0, ptr %arrayidx199.i.1, align 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 2, i16 %149)
  %exitcond978.not.i.1 = icmp eq i16 %149, 2
  br i1 %exitcond978.not.i.1, label %if.end196.i.1.for.end202.i_crit_edge, label %for.body169.i.2

if.end196.i.1.for.end202.i_crit_edge:             ; preds = %if.end196.i.1
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end202.i

for.body169.i.2:                                  ; preds = %if.end196.i.1
  %234 = ptrtoint ptr %arrayidx172.i.2 to i32
  call void @__asan_store1_noabort(i32 %234)
  store i8 12, ptr %arrayidx172.i.2, align 1
  %235 = ptrtoint ptr %buf173.i to i32
  call void @__asan_load4_noabort(i32 %235)
  %236 = load ptr, ptr %buf173.i, align 4
  %add176.i.2 = or i32 %mul175.i, 2
  %arrayidx177.i.2 = getelementptr i8, ptr %236, i32 %add176.i.2
  %237 = ptrtoint ptr %arrayidx177.i.2 to i32
  call void @__asan_load1_noabort(i32 %237)
  %238 = load i8, ptr %arrayidx177.i.2, align 1
  %239 = ptrtoint ptr %arrayidx180.i.2 to i32
  call void @__asan_store1_noabort(i32 %239)
  store i8 %238, ptr %arrayidx180.i.2, align 1
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @dvb_usb_mxl111sf_debug to i32))
  %240 = load i32, ptr @dvb_usb_mxl111sf_debug, align 4
  %and181.i.2 = and i32 %240, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and181.i.2)
  %tobool182.not.i.2 = icmp eq i32 %and181.i.2, 0
  br i1 %tobool182.not.i.2, label %for.body169.i.2.if.end196.i.2_crit_edge, label %do.end186.i.2

for.body169.i.2.if.end196.i.2_crit_edge:          ; preds = %for.body169.i.2
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end196.i.2

do.end186.i.2:                                    ; preds = %for.body169.i.2
  call void @__sanitizer_cov_trace_pc() #7
  %241 = ptrtoint ptr %arrayidx177.i.2 to i32
  call void @__asan_load1_noabort(i32 %241)
  %242 = load i8, ptr %arrayidx177.i.2, align 1
  %conv194.i.2 = zext i8 %242 to i32
  %call195.i.2 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.22, ptr noundef nonnull @.str.9, i32 noundef %conv104.lcssa.i, i32 noundef 2, i32 noundef %conv194.i.2) #8
  br label %if.end196.i.2

if.end196.i.2:                                    ; preds = %do.end186.i.2, %for.body169.i.2.if.end196.i.2_crit_edge
  %243 = ptrtoint ptr %arrayidx199.i.2 to i32
  call void @__asan_store1_noabort(i32 %243)
  store i8 0, ptr %arrayidx199.i.2, align 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 3, i16 %149)
  %exitcond978.not.i.2 = icmp eq i16 %149, 3
  br i1 %exitcond978.not.i.2, label %if.end196.i.2.for.end202.i_crit_edge, label %for.body169.i.3

if.end196.i.2.for.end202.i_crit_edge:             ; preds = %if.end196.i.2
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end202.i

for.body169.i.3:                                  ; preds = %if.end196.i.2
  %244 = ptrtoint ptr %arrayidx172.i.3 to i32
  call void @__asan_store1_noabort(i32 %244)
  store i8 12, ptr %arrayidx172.i.3, align 1
  %245 = ptrtoint ptr %buf173.i to i32
  call void @__asan_load4_noabort(i32 %245)
  %246 = load ptr, ptr %buf173.i, align 4
  %add176.i.3 = or i32 %mul175.i, 3
  %arrayidx177.i.3 = getelementptr i8, ptr %246, i32 %add176.i.3
  %247 = ptrtoint ptr %arrayidx177.i.3 to i32
  call void @__asan_load1_noabort(i32 %247)
  %248 = load i8, ptr %arrayidx177.i.3, align 1
  %249 = ptrtoint ptr %arrayidx180.i.3 to i32
  call void @__asan_store1_noabort(i32 %249)
  store i8 %248, ptr %arrayidx180.i.3, align 1
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @dvb_usb_mxl111sf_debug to i32))
  %250 = load i32, ptr @dvb_usb_mxl111sf_debug, align 4
  %and181.i.3 = and i32 %250, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and181.i.3)
  %tobool182.not.i.3 = icmp eq i32 %and181.i.3, 0
  br i1 %tobool182.not.i.3, label %for.body169.i.3.if.end196.i.3_crit_edge, label %do.end186.i.3

for.body169.i.3.if.end196.i.3_crit_edge:          ; preds = %for.body169.i.3
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end196.i.3

do.end186.i.3:                                    ; preds = %for.body169.i.3
  call void @__sanitizer_cov_trace_pc() #7
  %251 = ptrtoint ptr %arrayidx177.i.3 to i32
  call void @__asan_load1_noabort(i32 %251)
  %252 = load i8, ptr %arrayidx177.i.3, align 1
  %conv194.i.3 = zext i8 %252 to i32
  %call195.i.3 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.22, ptr noundef nonnull @.str.9, i32 noundef %conv104.lcssa.i, i32 noundef 3, i32 noundef %conv194.i.3) #8
  br label %if.end196.i.3

if.end196.i.3:                                    ; preds = %do.end186.i.3, %for.body169.i.3.if.end196.i.3_crit_edge
  %253 = ptrtoint ptr %arrayidx199.i.3 to i32
  call void @__asan_store1_noabort(i32 %253)
  store i8 0, ptr %arrayidx199.i.3, align 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 4, i16 %149)
  %exitcond978.not.i.3 = icmp eq i16 %149, 4
  br i1 %exitcond978.not.i.3, label %if.end196.i.3.for.end202.i_crit_edge, label %for.body169.i.4

if.end196.i.3.for.end202.i_crit_edge:             ; preds = %if.end196.i.3
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end202.i

for.body169.i.4:                                  ; preds = %if.end196.i.3
  %254 = ptrtoint ptr %arrayidx172.i.4 to i32
  call void @__asan_store1_noabort(i32 %254)
  store i8 12, ptr %arrayidx172.i.4, align 1
  %255 = ptrtoint ptr %buf173.i to i32
  call void @__asan_load4_noabort(i32 %255)
  %256 = load ptr, ptr %buf173.i, align 4
  %add176.i.4 = or i32 %mul175.i, 4
  %arrayidx177.i.4 = getelementptr i8, ptr %256, i32 %add176.i.4
  %257 = ptrtoint ptr %arrayidx177.i.4 to i32
  call void @__asan_load1_noabort(i32 %257)
  %258 = load i8, ptr %arrayidx177.i.4, align 1
  %259 = ptrtoint ptr %arrayidx180.i.4 to i32
  call void @__asan_store1_noabort(i32 %259)
  store i8 %258, ptr %arrayidx180.i.4, align 1
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @dvb_usb_mxl111sf_debug to i32))
  %260 = load i32, ptr @dvb_usb_mxl111sf_debug, align 4
  %and181.i.4 = and i32 %260, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and181.i.4)
  %tobool182.not.i.4 = icmp eq i32 %and181.i.4, 0
  br i1 %tobool182.not.i.4, label %for.body169.i.4.if.end196.i.4_crit_edge, label %do.end186.i.4

for.body169.i.4.if.end196.i.4_crit_edge:          ; preds = %for.body169.i.4
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end196.i.4

do.end186.i.4:                                    ; preds = %for.body169.i.4
  call void @__sanitizer_cov_trace_pc() #7
  %261 = ptrtoint ptr %arrayidx177.i.4 to i32
  call void @__asan_load1_noabort(i32 %261)
  %262 = load i8, ptr %arrayidx177.i.4, align 1
  %conv194.i.4 = zext i8 %262 to i32
  %call195.i.4 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.22, ptr noundef nonnull @.str.9, i32 noundef %conv104.lcssa.i, i32 noundef 4, i32 noundef %conv194.i.4) #8
  br label %if.end196.i.4

if.end196.i.4:                                    ; preds = %do.end186.i.4, %for.body169.i.4.if.end196.i.4_crit_edge
  %263 = ptrtoint ptr %arrayidx199.i.4 to i32
  call void @__asan_store1_noabort(i32 %263)
  store i8 0, ptr %arrayidx199.i.4, align 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 5, i16 %149)
  %exitcond978.not.i.4 = icmp eq i16 %149, 5
  br i1 %exitcond978.not.i.4, label %if.end196.i.4.for.end202.i_crit_edge, label %for.body169.i.5

if.end196.i.4.for.end202.i_crit_edge:             ; preds = %if.end196.i.4
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end202.i

for.body169.i.5:                                  ; preds = %if.end196.i.4
  %264 = ptrtoint ptr %arrayidx172.i.5 to i32
  call void @__asan_store1_noabort(i32 %264)
  store i8 12, ptr %arrayidx172.i.5, align 1
  %265 = ptrtoint ptr %buf173.i to i32
  call void @__asan_load4_noabort(i32 %265)
  %266 = load ptr, ptr %buf173.i, align 4
  %add176.i.5 = or i32 %mul175.i, 5
  %arrayidx177.i.5 = getelementptr i8, ptr %266, i32 %add176.i.5
  %267 = ptrtoint ptr %arrayidx177.i.5 to i32
  call void @__asan_load1_noabort(i32 %267)
  %268 = load i8, ptr %arrayidx177.i.5, align 1
  %269 = ptrtoint ptr %arrayidx180.i.5 to i32
  call void @__asan_store1_noabort(i32 %269)
  store i8 %268, ptr %arrayidx180.i.5, align 1
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @dvb_usb_mxl111sf_debug to i32))
  %270 = load i32, ptr @dvb_usb_mxl111sf_debug, align 4
  %and181.i.5 = and i32 %270, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and181.i.5)
  %tobool182.not.i.5 = icmp eq i32 %and181.i.5, 0
  br i1 %tobool182.not.i.5, label %for.body169.i.5.if.end196.i.5_crit_edge, label %do.end186.i.5

for.body169.i.5.if.end196.i.5_crit_edge:          ; preds = %for.body169.i.5
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end196.i.5

do.end186.i.5:                                    ; preds = %for.body169.i.5
  call void @__sanitizer_cov_trace_pc() #7
  %271 = ptrtoint ptr %arrayidx177.i.5 to i32
  call void @__asan_load1_noabort(i32 %271)
  %272 = load i8, ptr %arrayidx177.i.5, align 1
  %conv194.i.5 = zext i8 %272 to i32
  %call195.i.5 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.22, ptr noundef nonnull @.str.9, i32 noundef %conv104.lcssa.i, i32 noundef 5, i32 noundef %conv194.i.5) #8
  br label %if.end196.i.5

if.end196.i.5:                                    ; preds = %do.end186.i.5, %for.body169.i.5.if.end196.i.5_crit_edge
  %273 = ptrtoint ptr %arrayidx199.i.5 to i32
  call void @__asan_store1_noabort(i32 %273)
  store i8 0, ptr %arrayidx199.i.5, align 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 6, i16 %149)
  %exitcond978.not.i.5 = icmp eq i16 %149, 6
  br i1 %exitcond978.not.i.5, label %if.end196.i.5.for.end202.i_crit_edge, label %for.body169.i.6

if.end196.i.5.for.end202.i_crit_edge:             ; preds = %if.end196.i.5
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end202.i

for.body169.i.6:                                  ; preds = %if.end196.i.5
  %274 = ptrtoint ptr %arrayidx172.i.6 to i32
  call void @__asan_store1_noabort(i32 %274)
  store i8 12, ptr %arrayidx172.i.6, align 1
  %275 = ptrtoint ptr %buf173.i to i32
  call void @__asan_load4_noabort(i32 %275)
  %276 = load ptr, ptr %buf173.i, align 4
  %add176.i.6 = or i32 %mul175.i, 6
  %arrayidx177.i.6 = getelementptr i8, ptr %276, i32 %add176.i.6
  %277 = ptrtoint ptr %arrayidx177.i.6 to i32
  call void @__asan_load1_noabort(i32 %277)
  %278 = load i8, ptr %arrayidx177.i.6, align 1
  %279 = ptrtoint ptr %arrayidx180.i.6 to i32
  call void @__asan_store1_noabort(i32 %279)
  store i8 %278, ptr %arrayidx180.i.6, align 1
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @dvb_usb_mxl111sf_debug to i32))
  %280 = load i32, ptr @dvb_usb_mxl111sf_debug, align 4
  %and181.i.6 = and i32 %280, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and181.i.6)
  %tobool182.not.i.6 = icmp eq i32 %and181.i.6, 0
  br i1 %tobool182.not.i.6, label %for.body169.i.6.if.end196.i.6_crit_edge, label %do.end186.i.6

for.body169.i.6.if.end196.i.6_crit_edge:          ; preds = %for.body169.i.6
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end196.i.6

do.end186.i.6:                                    ; preds = %for.body169.i.6
  call void @__sanitizer_cov_trace_pc() #7
  %281 = ptrtoint ptr %arrayidx177.i.6 to i32
  call void @__asan_load1_noabort(i32 %281)
  %282 = load i8, ptr %arrayidx177.i.6, align 1
  %conv194.i.6 = zext i8 %282 to i32
  %call195.i.6 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.22, ptr noundef nonnull @.str.9, i32 noundef %conv104.lcssa.i, i32 noundef 6, i32 noundef %conv194.i.6) #8
  br label %if.end196.i.6

if.end196.i.6:                                    ; preds = %do.end186.i.6, %for.body169.i.6.if.end196.i.6_crit_edge
  %283 = ptrtoint ptr %arrayidx199.i.6 to i32
  call void @__asan_store1_noabort(i32 %283)
  store i8 0, ptr %arrayidx199.i.6, align 1
  br label %for.end202.i

for.end202.i:                                     ; preds = %if.end196.i.6, %if.end196.i.5.for.end202.i_crit_edge, %if.end196.i.4.for.end202.i_crit_edge, %if.end196.i.3.for.end202.i_crit_edge, %if.end196.i.2.for.end202.i_crit_edge, %if.end196.i.1.for.end202.i_crit_edge, %if.end196.i.for.end202.i_crit_edge
  %284 = ptrtoint ptr %buf.i to i32
  call void @__asan_load1_noabort(i32 %284)
  %285 = load i8, ptr %buf.i, align 1
  %call.i793.i = call i32 @mxl111sf_ctrl_msg(ptr noundef %3, i8 noundef zeroext %285, ptr noundef %6, i32 noundef 25, ptr noundef null, i32 noundef 0) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i793.i)
  %cmp.i794.i = icmp slt i32 %call.i793.i, 0
  br i1 %cmp.i794.i, label %land.lhs.true.i797.i, label %for.end202.i.mxl111sf_i2c_send_data.exit801.i_crit_edge

for.end202.i.mxl111sf_i2c_send_data.exit801.i_crit_edge: ; preds = %for.end202.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %mxl111sf_i2c_send_data.exit801.i

land.lhs.true.i797.i:                             ; preds = %for.end202.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @dvb_usb_mxl111sf_debug to i32))
  %286 = load i32, ptr @dvb_usb_mxl111sf_debug, align 4
  %and.i795.i = and i32 %286, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i795.i)
  %tobool2.not.i796.i = icmp eq i32 %and.i795.i, 0
  br i1 %tobool2.not.i796.i, label %land.lhs.true.i797.i.mxl111sf_i2c_send_data.exit801.i_crit_edge, label %do.end.i799.i

land.lhs.true.i797.i.mxl111sf_i2c_send_data.exit801.i_crit_edge: ; preds = %land.lhs.true.i797.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %mxl111sf_i2c_send_data.exit801.i

do.end.i799.i:                                    ; preds = %land.lhs.true.i797.i
  call void @__sanitizer_cov_trace_pc() #7
  %call3.i798.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.51, i32 noundef %call.i793.i, i32 noundef 312) #8
  br label %mxl111sf_i2c_send_data.exit801.i

mxl111sf_i2c_send_data.exit801.i:                 ; preds = %do.end.i799.i, %land.lhs.true.i797.i.mxl111sf_i2c_send_data.exit801.i_crit_edge, %for.end202.i.mxl111sf_i2c_send_data.exit801.i_crit_edge
  call void @llvm.lifetime.start.p0(i64 26, ptr nonnull %buf.i802.i) #5
  %287 = call ptr @memset(ptr %48, i32 255, i32 20)
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @dvb_usb_mxl111sf_debug to i32))
  %288 = load i32, ptr @dvb_usb_mxl111sf_debug, align 4
  %and.i803.i = and i32 %288, 20
  call void @__sanitizer_cov_trace_const_cmp4(i32 20, i32 %and.i803.i)
  %cmp.i804.i = icmp eq i32 %and.i803.i, 20
  br i1 %cmp.i804.i, label %do.end.i806.i, label %mxl111sf_i2c_send_data.exit801.i.if.end.i809.i_crit_edge

mxl111sf_i2c_send_data.exit801.i.if.end.i809.i_crit_edge: ; preds = %mxl111sf_i2c_send_data.exit801.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end.i809.i

do.end.i806.i:                                    ; preds = %mxl111sf_i2c_send_data.exit801.i
  call void @__sanitizer_cov_trace_pc() #7
  %call.i805.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.52, ptr noundef nonnull @.str.53) #8
  br label %if.end.i809.i

if.end.i809.i:                                    ; preds = %do.end.i806.i, %mxl111sf_i2c_send_data.exit801.i.if.end.i809.i_crit_edge
  %289 = ptrtoint ptr %buf.i802.i to i32
  call void @__asan_store1_noabort(i32 %289)
  store i8 -35, ptr %buf.i802.i, align 1
  %290 = ptrtoint ptr %43 to i32
  call void @__asan_store1_noabort(i32 %290)
  store i8 0, ptr %43, align 1
  %291 = ptrtoint ptr %44 to i32
  call void @__asan_store1_noabort(i32 %291)
  store i8 16, ptr %44, align 1
  %292 = ptrtoint ptr %45 to i32
  call void @__asan_store1_noabort(i32 %292)
  store i8 0, ptr %45, align 1
  %293 = ptrtoint ptr %46 to i32
  call void @__asan_store1_noabort(i32 %293)
  store i8 0, ptr %46, align 1
  %294 = ptrtoint ptr %47 to i32
  call void @__asan_store1_noabort(i32 %294)
  store i8 -2, ptr %47, align 1
  %call.i.i807.i = call i32 @mxl111sf_ctrl_msg(ptr noundef %3, i8 noundef zeroext -35, ptr noundef %43, i32 noundef 25, ptr noundef nonnull %buf.i802.i, i32 noundef 24) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i807.i)
  %cmp.i.i808.i = icmp slt i32 %call.i.i807.i, 0
  br i1 %cmp.i.i808.i, label %land.lhs.true.i.i812.i, label %if.end.i809.i.mxl111sf_i2c_check_status.exit816.i_crit_edge

if.end.i809.i.mxl111sf_i2c_check_status.exit816.i_crit_edge: ; preds = %if.end.i809.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %mxl111sf_i2c_check_status.exit816.i

land.lhs.true.i.i812.i:                           ; preds = %if.end.i809.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @dvb_usb_mxl111sf_debug to i32))
  %295 = load i32, ptr @dvb_usb_mxl111sf_debug, align 4
  %and.i.i810.i = and i32 %295, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i810.i)
  %tobool2.not.i.i811.i = icmp eq i32 %and.i.i810.i, 0
  br i1 %tobool2.not.i.i811.i, label %land.lhs.true.i.i812.i.mxl111sf_i2c_check_status.exit816.i_crit_edge, label %do.end.i.i814.i

land.lhs.true.i.i812.i.mxl111sf_i2c_check_status.exit816.i_crit_edge: ; preds = %land.lhs.true.i.i812.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %mxl111sf_i2c_check_status.exit816.i

do.end.i.i814.i:                                  ; preds = %land.lhs.true.i.i812.i
  call void @__sanitizer_cov_trace_pc() #7
  %call3.i.i813.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.54, i32 noundef %call.i.i807.i, i32 noundef 322) #8
  br label %mxl111sf_i2c_check_status.exit816.i

mxl111sf_i2c_check_status.exit816.i:              ; preds = %do.end.i.i814.i, %land.lhs.true.i.i812.i.mxl111sf_i2c_check_status.exit816.i_crit_edge, %if.end.i809.i.mxl111sf_i2c_check_status.exit816.i_crit_edge
  %296 = ptrtoint ptr %43 to i32
  call void @__asan_load1_noabort(i32 %296)
  %297 = load i8, ptr %43, align 1
  call void @llvm.lifetime.end.p0(i64 26, ptr nonnull %buf.i802.i) #5
  %298 = and i8 %297, 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %298)
  %cmp207.not.i = icmp eq i8 %298, 0
  br i1 %cmp207.not.i, label %mxl111sf_i2c_check_status.exit816.i.if.end225.i_crit_edge, label %if.then209.i

mxl111sf_i2c_check_status.exit816.i.if.end225.i_crit_edge: ; preds = %mxl111sf_i2c_check_status.exit816.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end225.i

if.then209.i:                                     ; preds = %mxl111sf_i2c_check_status.exit816.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @dvb_usb_mxl111sf_debug to i32))
  %299 = load i32, ptr @dvb_usb_mxl111sf_debug, align 4
  %and210.i = and i32 %299, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and210.i)
  %tobool211.not.i = icmp eq i32 %and210.i, 0
  br i1 %tobool211.not.i, label %if.then209.i.exit.sink.split.i_crit_edge, label %do.end215.i

if.then209.i.exit.sink.split.i_crit_edge:         ; preds = %if.then209.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %exit.sink.split.i

do.end215.i:                                      ; preds = %if.then209.i
  call void @__sanitizer_cov_trace_pc() #7
  %300 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load2_noabort(i32 %300)
  %301 = load i16, ptr %arrayidx, align 4
  %conv218.i = zext i16 %301 to i32
  %call219.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.14, ptr noundef nonnull @.str.9, i32 noundef %conv218.i) #8
  br label %exit.sink.split.i

if.end225.i:                                      ; preds = %mxl111sf_i2c_check_status.exit816.i.if.end225.i_crit_edge, %for.end152.i.if.end225.i_crit_edge
  %ret.1.i = phi i32 [ %call.i793.i, %mxl111sf_i2c_check_status.exit816.i.if.end225.i_crit_edge ], [ %ret.0.lcssa.i, %for.end152.i.if.end225.i_crit_edge ]
  %302 = ptrtoint ptr %7 to i32
  call void @__asan_store1_noabort(i32 %302)
  store i8 0, ptr %7, align 1
  %303 = ptrtoint ptr %8 to i32
  call void @__asan_store1_noabort(i32 %303)
  store i8 78, ptr %8, align 1
  %304 = ptrtoint ptr %9 to i32
  call void @__asan_store1_noabort(i32 %304)
  store i8 3, ptr %9, align 1
  br label %if.end229.i

if.end229.i:                                      ; preds = %if.end225.i, %land.lhs.true.i.if.end229.i_crit_edge, %mxl111sf_i2c_send_data.exit.i.if.end229.i_crit_edge
  %ret.2.i = phi i32 [ %call.i.i, %mxl111sf_i2c_send_data.exit.i.if.end229.i_crit_edge ], [ %ret.1.i, %if.end225.i ], [ %call.i.i, %land.lhs.true.i.if.end229.i_crit_edge ]
  %305 = ptrtoint ptr %flags32.i to i32
  call void @__asan_load2_noabort(i32 %305)
  %306 = load i16, ptr %flags32.i, align 2
  %307 = and i16 %306, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %307)
  %tobool233.not.i = icmp eq i16 %307, 0
  br i1 %tobool233.not.i, label %if.end229.i.exit.i_crit_edge, label %land.lhs.true234.i

if.end229.i.exit.i_crit_edge:                     ; preds = %if.end229.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %exit.i

land.lhs.true234.i:                               ; preds = %if.end229.i
  %len235.i = getelementptr %struct.i2c_msg, ptr %msg, i32 %i.0161, i32 2
  %308 = ptrtoint ptr %len235.i to i32
  call void @__asan_load2_noabort(i32 %308)
  %309 = load i16, ptr %len235.i, align 4
  %conv236.i = zext i16 %309 to i32
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %309)
  %cmp237.not.i = icmp eq i16 %309, 0
  br i1 %cmp237.not.i, label %land.lhs.true234.i.exit.i_crit_edge, label %if.then239.i

land.lhs.true234.i.exit.i_crit_edge:              ; preds = %land.lhs.true234.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %exit.i

if.then239.i:                                     ; preds = %land.lhs.true234.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @dvb_usb_mxl111sf_debug to i32))
  %310 = load i32, ptr @dvb_usb_mxl111sf_debug, align 4
  %and240.i = and i32 %310, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and240.i)
  %tobool241.not.i = icmp eq i32 %and240.i, 0
  br i1 %tobool241.not.i, label %if.then239.i.if.end250.i_crit_edge, label %do.end245.i

if.then239.i.if.end250.i_crit_edge:               ; preds = %if.then239.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end250.i

do.end245.i:                                      ; preds = %if.then239.i
  call void @__sanitizer_cov_trace_pc() #7
  %call249.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.27, ptr noundef nonnull @.str.9, i32 noundef %conv236.i) #8
  br label %if.end250.i

if.end250.i:                                      ; preds = %do.end245.i, %if.then239.i.if.end250.i_crit_edge
  %311 = ptrtoint ptr %7 to i32
  call void @__asan_store1_noabort(i32 %311)
  store i8 0, ptr %7, align 1
  %312 = ptrtoint ptr %8 to i32
  call void @__asan_store1_noabort(i32 %312)
  store i8 -33, ptr %8, align 1
  %313 = ptrtoint ptr %9 to i32
  call void @__asan_store1_noabort(i32 %313)
  store i8 3, ptr %9, align 1
  %314 = ptrtoint ptr %10 to i32
  call void @__asan_store1_noabort(i32 %314)
  store i8 20, ptr %10, align 1
  %315 = ptrtoint ptr %len235.i to i32
  call void @__asan_load2_noabort(i32 %315)
  %316 = load i16, ptr %len235.i, align 4
  %conv258.i = trunc i16 %316 to i8
  %317 = ptrtoint ptr %11 to i32
  call void @__asan_store1_noabort(i32 %317)
  store i8 %conv258.i, ptr %11, align 1
  %318 = ptrtoint ptr %12 to i32
  call void @__asan_store1_noabort(i32 %318)
  store i8 0, ptr %12, align 1
  %319 = ptrtoint ptr %13 to i32
  call void @__asan_store1_noabort(i32 %319)
  store i8 8, ptr %13, align 1
  %320 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load2_noabort(i32 %320)
  %321 = load i16, ptr %arrayidx, align 4
  %conv263.i = trunc i16 %321 to i8
  %322 = ptrtoint ptr %14 to i32
  call void @__asan_store1_noabort(i32 %322)
  store i8 %conv263.i, ptr %14, align 1
  %323 = ptrtoint ptr %15 to i32
  call void @__asan_store1_noabort(i32 %323)
  store i8 0, ptr %15, align 1
  %324 = ptrtoint ptr %16 to i32
  call void @__asan_store1_noabort(i32 %324)
  store i8 -2, ptr %16, align 1
  %325 = ptrtoint ptr %buf.i to i32
  call void @__asan_load1_noabort(i32 %325)
  %326 = load i8, ptr %buf.i, align 1
  %call.i818.i = call i32 @mxl111sf_ctrl_msg(ptr noundef %3, i8 noundef zeroext %326, ptr noundef %6, i32 noundef 25, ptr noundef null, i32 noundef 0) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i818.i)
  %cmp.i819.i = icmp slt i32 %call.i818.i, 0
  br i1 %cmp.i819.i, label %land.lhs.true.i822.i, label %if.end250.i.mxl111sf_i2c_send_data.exit826.i_crit_edge

if.end250.i.mxl111sf_i2c_send_data.exit826.i_crit_edge: ; preds = %if.end250.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %mxl111sf_i2c_send_data.exit826.i

land.lhs.true.i822.i:                             ; preds = %if.end250.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @dvb_usb_mxl111sf_debug to i32))
  %327 = load i32, ptr @dvb_usb_mxl111sf_debug, align 4
  %and.i820.i = and i32 %327, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i820.i)
  %tobool2.not.i821.i = icmp eq i32 %and.i820.i, 0
  br i1 %tobool2.not.i821.i, label %land.lhs.true.i822.i.mxl111sf_i2c_send_data.exit826.i_crit_edge, label %do.end.i824.i

land.lhs.true.i822.i.mxl111sf_i2c_send_data.exit826.i_crit_edge: ; preds = %land.lhs.true.i822.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %mxl111sf_i2c_send_data.exit826.i

do.end.i824.i:                                    ; preds = %land.lhs.true.i822.i
  call void @__sanitizer_cov_trace_pc() #7
  %call3.i823.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.51, i32 noundef %call.i818.i, i32 noundef 312) #8
  br label %mxl111sf_i2c_send_data.exit826.i

mxl111sf_i2c_send_data.exit826.i:                 ; preds = %do.end.i824.i, %land.lhs.true.i822.i.mxl111sf_i2c_send_data.exit826.i_crit_edge, %if.end250.i.mxl111sf_i2c_send_data.exit826.i_crit_edge
  call void @llvm.lifetime.start.p0(i64 26, ptr nonnull %buf.i827.i) #5
  %328 = call ptr @memset(ptr %54, i32 255, i32 20)
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @dvb_usb_mxl111sf_debug to i32))
  %329 = load i32, ptr @dvb_usb_mxl111sf_debug, align 4
  %and.i828.i = and i32 %329, 20
  call void @__sanitizer_cov_trace_const_cmp4(i32 20, i32 %and.i828.i)
  %cmp.i829.i = icmp eq i32 %and.i828.i, 20
  br i1 %cmp.i829.i, label %do.end.i831.i, label %mxl111sf_i2c_send_data.exit826.i.if.end.i834.i_crit_edge

mxl111sf_i2c_send_data.exit826.i.if.end.i834.i_crit_edge: ; preds = %mxl111sf_i2c_send_data.exit826.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end.i834.i

do.end.i831.i:                                    ; preds = %mxl111sf_i2c_send_data.exit826.i
  call void @__sanitizer_cov_trace_pc() #7
  %call.i830.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.52, ptr noundef nonnull @.str.53) #8
  br label %if.end.i834.i

if.end.i834.i:                                    ; preds = %do.end.i831.i, %mxl111sf_i2c_send_data.exit826.i.if.end.i834.i_crit_edge
  %330 = ptrtoint ptr %buf.i827.i to i32
  call void @__asan_store1_noabort(i32 %330)
  store i8 -35, ptr %buf.i827.i, align 1
  %331 = ptrtoint ptr %49 to i32
  call void @__asan_store1_noabort(i32 %331)
  store i8 0, ptr %49, align 1
  %332 = ptrtoint ptr %50 to i32
  call void @__asan_store1_noabort(i32 %332)
  store i8 16, ptr %50, align 1
  %333 = ptrtoint ptr %51 to i32
  call void @__asan_store1_noabort(i32 %333)
  store i8 0, ptr %51, align 1
  %334 = ptrtoint ptr %52 to i32
  call void @__asan_store1_noabort(i32 %334)
  store i8 0, ptr %52, align 1
  %335 = ptrtoint ptr %53 to i32
  call void @__asan_store1_noabort(i32 %335)
  store i8 -2, ptr %53, align 1
  %call.i.i832.i = call i32 @mxl111sf_ctrl_msg(ptr noundef %3, i8 noundef zeroext -35, ptr noundef %49, i32 noundef 25, ptr noundef nonnull %buf.i827.i, i32 noundef 24) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i832.i)
  %cmp.i.i833.i = icmp slt i32 %call.i.i832.i, 0
  br i1 %cmp.i.i833.i, label %land.lhs.true.i.i837.i, label %if.end.i834.i.mxl111sf_i2c_check_status.exit841.i_crit_edge

if.end.i834.i.mxl111sf_i2c_check_status.exit841.i_crit_edge: ; preds = %if.end.i834.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %mxl111sf_i2c_check_status.exit841.i

land.lhs.true.i.i837.i:                           ; preds = %if.end.i834.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @dvb_usb_mxl111sf_debug to i32))
  %336 = load i32, ptr @dvb_usb_mxl111sf_debug, align 4
  %and.i.i835.i = and i32 %336, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i835.i)
  %tobool2.not.i.i836.i = icmp eq i32 %and.i.i835.i, 0
  br i1 %tobool2.not.i.i836.i, label %land.lhs.true.i.i837.i.mxl111sf_i2c_check_status.exit841.i_crit_edge, label %do.end.i.i839.i

land.lhs.true.i.i837.i.mxl111sf_i2c_check_status.exit841.i_crit_edge: ; preds = %land.lhs.true.i.i837.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %mxl111sf_i2c_check_status.exit841.i

do.end.i.i839.i:                                  ; preds = %land.lhs.true.i.i837.i
  call void @__sanitizer_cov_trace_pc() #7
  %call3.i.i838.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.54, i32 noundef %call.i.i832.i, i32 noundef 322) #8
  br label %mxl111sf_i2c_check_status.exit841.i

mxl111sf_i2c_check_status.exit841.i:              ; preds = %do.end.i.i839.i, %land.lhs.true.i.i837.i.mxl111sf_i2c_check_status.exit841.i_crit_edge, %if.end.i834.i.mxl111sf_i2c_check_status.exit841.i_crit_edge
  %337 = ptrtoint ptr %49 to i32
  call void @__asan_load1_noabort(i32 %337)
  %338 = load i8, ptr %49, align 1
  call void @llvm.lifetime.end.p0(i64 26, ptr nonnull %buf.i827.i) #5
  %339 = and i8 %338, 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %339)
  %cmp271.not.i = icmp eq i8 %339, 0
  br i1 %cmp271.not.i, label %if.end288.i, label %if.then273.i

if.then273.i:                                     ; preds = %mxl111sf_i2c_check_status.exit841.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @dvb_usb_mxl111sf_debug to i32))
  %340 = load i32, ptr @dvb_usb_mxl111sf_debug, align 4
  %and274.i = and i32 %340, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and274.i)
  %tobool275.not.i = icmp eq i32 %and274.i, 0
  br i1 %tobool275.not.i, label %if.then273.i.exit.sink.split.i_crit_edge, label %do.end279.i

if.then273.i.exit.sink.split.i_crit_edge:         ; preds = %if.then273.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %exit.sink.split.i

do.end279.i:                                      ; preds = %if.then273.i
  call void @__sanitizer_cov_trace_pc() #7
  %341 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load2_noabort(i32 %341)
  %342 = load i16, ptr %arrayidx, align 4
  %conv282.i = zext i16 %342 to i32
  %call283.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.30, ptr noundef nonnull @.str.9, i32 noundef %conv282.i) #8
  br label %exit.sink.split.i

if.end288.i:                                      ; preds = %mxl111sf_i2c_check_status.exit841.i
  %343 = ptrtoint ptr %len235.i to i32
  call void @__asan_load2_noabort(i32 %343)
  %344 = load i16, ptr %len235.i, align 4
  %div291752.i = lshr i16 %344, 3
  %345 = and i16 %344, 7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @dvb_usb_mxl111sf_debug to i32))
  %346 = load i32, ptr @dvb_usb_mxl111sf_debug, align 4
  %and297.i = and i32 %346, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and297.i)
  %tobool298.not.i = icmp eq i32 %and297.i, 0
  br i1 %tobool298.not.i, label %if.end288.i.if.end307.i_crit_edge, label %do.end302.i

if.end288.i.if.end307.i_crit_edge:                ; preds = %if.end288.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end307.i

do.end302.i:                                      ; preds = %if.end288.i
  call void @__sanitizer_cov_trace_pc() #7
  %conv304.i = zext i16 %div291752.i to i32
  %conv305.i = zext i16 %345 to i32
  %call306.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.17, ptr noundef nonnull @.str.9, i32 noundef %conv304.i, i32 noundef %conv305.i) #8
  br label %if.end307.i

if.end307.i:                                      ; preds = %do.end302.i, %if.end288.i.if.end307.i_crit_edge
  %347 = ptrtoint ptr %buf.i to i32
  call void @__asan_store1_noabort(i32 %347)
  store i8 -35, ptr %buf.i, align 1
  %348 = ptrtoint ptr %6 to i32
  call void @__asan_store1_noabort(i32 %348)
  store i8 0, ptr %6, align 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 8, i16 %344)
  %cmp313968.not.i = icmp ult i16 %344, 8
  br i1 %cmp313968.not.i, label %if.end307.i.for.end488.i_crit_edge, label %for.cond316.preheader.lr.ph.i

if.end307.i.for.end488.i_crit_edge:               ; preds = %if.end307.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end488.i

for.cond316.preheader.lr.ph.i:                    ; preds = %if.end307.i
  %buf477.i = getelementptr %struct.i2c_msg, ptr %msg, i32 %i.0161, i32 3
  %umax984.i = call i16 @llvm.umax.i16(i16 %div291752.i, i16 1) #5
  %wide.trip.count985.i = zext i16 %umax984.i to i32
  br label %for.cond316.preheader.i

for.cond316.preheader.i:                          ; preds = %for.inc486.i.for.cond316.preheader.i_crit_edge, %for.cond316.preheader.lr.ph.i
  %indvars.iv982.i = phi i32 [ 0, %for.cond316.preheader.lr.ph.i ], [ %indvars.iv.next983.i, %for.inc486.i.for.cond316.preheader.i_crit_edge ]
  %349 = ptrtoint ptr %7 to i32
  call void @__asan_store1_noabort(i32 %349)
  store i8 12, ptr %7, align 1
  %350 = ptrtoint ptr %8 to i32
  call void @__asan_store1_noabort(i32 %350)
  store i8 0, ptr %8, align 1
  %351 = ptrtoint ptr %9 to i32
  call void @__asan_store1_noabort(i32 %351)
  store i8 0, ptr %9, align 1
  %352 = ptrtoint ptr %10 to i32
  call void @__asan_store1_noabort(i32 %352)
  store i8 12, ptr %10, align 1
  %353 = ptrtoint ptr %11 to i32
  call void @__asan_store1_noabort(i32 %353)
  store i8 0, ptr %11, align 1
  %354 = ptrtoint ptr %12 to i32
  call void @__asan_store1_noabort(i32 %354)
  store i8 0, ptr %12, align 1
  %355 = ptrtoint ptr %13 to i32
  call void @__asan_store1_noabort(i32 %355)
  store i8 12, ptr %13, align 1
  %356 = ptrtoint ptr %14 to i32
  call void @__asan_store1_noabort(i32 %356)
  store i8 0, ptr %14, align 1
  %357 = ptrtoint ptr %15 to i32
  call void @__asan_store1_noabort(i32 %357)
  store i8 0, ptr %15, align 1
  %358 = ptrtoint ptr %16 to i32
  call void @__asan_store1_noabort(i32 %358)
  store i8 12, ptr %16, align 1
  %359 = ptrtoint ptr %17 to i32
  call void @__asan_store1_noabort(i32 %359)
  store i8 0, ptr %17, align 1
  %360 = ptrtoint ptr %18 to i32
  call void @__asan_store1_noabort(i32 %360)
  store i8 0, ptr %18, align 1
  %361 = ptrtoint ptr %19 to i32
  call void @__asan_store1_noabort(i32 %361)
  store i8 12, ptr %19, align 1
  %362 = ptrtoint ptr %20 to i32
  call void @__asan_store1_noabort(i32 %362)
  store i8 0, ptr %20, align 1
  %363 = ptrtoint ptr %21 to i32
  call void @__asan_store1_noabort(i32 %363)
  store i8 0, ptr %21, align 1
  %364 = ptrtoint ptr %22 to i32
  call void @__asan_store1_noabort(i32 %364)
  store i8 12, ptr %22, align 1
  %365 = ptrtoint ptr %23 to i32
  call void @__asan_store1_noabort(i32 %365)
  store i8 0, ptr %23, align 1
  %366 = ptrtoint ptr %24 to i32
  call void @__asan_store1_noabort(i32 %366)
  store i8 0, ptr %24, align 1
  %367 = ptrtoint ptr %25 to i32
  call void @__asan_store1_noabort(i32 %367)
  store i8 12, ptr %25, align 1
  %368 = ptrtoint ptr %26 to i32
  call void @__asan_store1_noabort(i32 %368)
  store i8 0, ptr %26, align 1
  %369 = ptrtoint ptr %27 to i32
  call void @__asan_store1_noabort(i32 %369)
  store i8 0, ptr %27, align 1
  %370 = ptrtoint ptr %28 to i32
  call void @__asan_store1_noabort(i32 %370)
  store i8 12, ptr %28, align 1
  %371 = ptrtoint ptr %29 to i32
  call void @__asan_store1_noabort(i32 %371)
  store i8 0, ptr %29, align 1
  %372 = ptrtoint ptr %30 to i32
  call void @__asan_store1_noabort(i32 %372)
  store i8 0, ptr %30, align 1
  %373 = ptrtoint ptr %buf.i to i32
  call void @__asan_load1_noabort(i32 %373)
  %374 = load i8, ptr %buf.i, align 1
  %call.i843.i = call i32 @mxl111sf_ctrl_msg(ptr noundef %3, i8 noundef zeroext %374, ptr noundef %6, i32 noundef 25, ptr noundef nonnull %i2c_r_data.i, i32 noundef 24) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i843.i)
  %cmp.i844.i = icmp slt i32 %call.i843.i, 0
  br i1 %cmp.i844.i, label %land.lhs.true.i847.i, label %for.cond316.preheader.i.mxl111sf_i2c_get_data.exit.i_crit_edge

for.cond316.preheader.i.mxl111sf_i2c_get_data.exit.i_crit_edge: ; preds = %for.cond316.preheader.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %mxl111sf_i2c_get_data.exit.i

land.lhs.true.i847.i:                             ; preds = %for.cond316.preheader.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @dvb_usb_mxl111sf_debug to i32))
  %375 = load i32, ptr @dvb_usb_mxl111sf_debug, align 4
  %and.i845.i = and i32 %375, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i845.i)
  %tobool2.not.i846.i = icmp eq i32 %and.i845.i, 0
  br i1 %tobool2.not.i846.i, label %land.lhs.true.i847.i.mxl111sf_i2c_get_data.exit.i_crit_edge, label %do.end.i849.i

land.lhs.true.i847.i.mxl111sf_i2c_get_data.exit.i_crit_edge: ; preds = %land.lhs.true.i847.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %mxl111sf_i2c_get_data.exit.i

do.end.i849.i:                                    ; preds = %land.lhs.true.i847.i
  call void @__sanitizer_cov_trace_pc() #7
  %call3.i848.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.54, i32 noundef %call.i843.i, i32 noundef 322) #8
  br label %mxl111sf_i2c_get_data.exit.i

mxl111sf_i2c_get_data.exit.i:                     ; preds = %do.end.i849.i, %land.lhs.true.i847.i.mxl111sf_i2c_get_data.exit.i_crit_edge, %for.cond316.preheader.i.mxl111sf_i2c_get_data.exit.i_crit_edge
  call void @llvm.lifetime.start.p0(i64 26, ptr nonnull %buf.i851.i) #5
  %376 = call ptr @memset(ptr %60, i32 255, i32 20)
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @dvb_usb_mxl111sf_debug to i32))
  %377 = load i32, ptr @dvb_usb_mxl111sf_debug, align 4
  %and.i852.i = and i32 %377, 20
  call void @__sanitizer_cov_trace_const_cmp4(i32 20, i32 %and.i852.i)
  %cmp.i853.i = icmp eq i32 %and.i852.i, 20
  br i1 %cmp.i853.i, label %do.end.i855.i, label %mxl111sf_i2c_get_data.exit.i.if.end.i858.i_crit_edge

mxl111sf_i2c_get_data.exit.i.if.end.i858.i_crit_edge: ; preds = %mxl111sf_i2c_get_data.exit.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end.i858.i

do.end.i855.i:                                    ; preds = %mxl111sf_i2c_get_data.exit.i
  call void @__sanitizer_cov_trace_pc() #7
  %call.i854.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.52, ptr noundef nonnull @.str.53) #8
  br label %if.end.i858.i

if.end.i858.i:                                    ; preds = %do.end.i855.i, %mxl111sf_i2c_get_data.exit.i.if.end.i858.i_crit_edge
  %378 = ptrtoint ptr %buf.i851.i to i32
  call void @__asan_store1_noabort(i32 %378)
  store i8 -35, ptr %buf.i851.i, align 1
  %379 = ptrtoint ptr %55 to i32
  call void @__asan_store1_noabort(i32 %379)
  store i8 0, ptr %55, align 1
  %380 = ptrtoint ptr %56 to i32
  call void @__asan_store1_noabort(i32 %380)
  store i8 16, ptr %56, align 1
  %381 = ptrtoint ptr %57 to i32
  call void @__asan_store1_noabort(i32 %381)
  store i8 0, ptr %57, align 1
  %382 = ptrtoint ptr %58 to i32
  call void @__asan_store1_noabort(i32 %382)
  store i8 0, ptr %58, align 1
  %383 = ptrtoint ptr %59 to i32
  call void @__asan_store1_noabort(i32 %383)
  store i8 -2, ptr %59, align 1
  %call.i.i856.i = call i32 @mxl111sf_ctrl_msg(ptr noundef %3, i8 noundef zeroext -35, ptr noundef %55, i32 noundef 25, ptr noundef nonnull %buf.i851.i, i32 noundef 24) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i856.i)
  %cmp.i.i857.i = icmp slt i32 %call.i.i856.i, 0
  br i1 %cmp.i.i857.i, label %land.lhs.true.i.i861.i, label %if.end.i858.i.mxl111sf_i2c_check_status.exit865.i_crit_edge

if.end.i858.i.mxl111sf_i2c_check_status.exit865.i_crit_edge: ; preds = %if.end.i858.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %mxl111sf_i2c_check_status.exit865.i

land.lhs.true.i.i861.i:                           ; preds = %if.end.i858.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @dvb_usb_mxl111sf_debug to i32))
  %384 = load i32, ptr @dvb_usb_mxl111sf_debug, align 4
  %and.i.i859.i = and i32 %384, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i859.i)
  %tobool2.not.i.i860.i = icmp eq i32 %and.i.i859.i, 0
  br i1 %tobool2.not.i.i860.i, label %land.lhs.true.i.i861.i.mxl111sf_i2c_check_status.exit865.i_crit_edge, label %do.end.i.i863.i

land.lhs.true.i.i861.i.mxl111sf_i2c_check_status.exit865.i_crit_edge: ; preds = %land.lhs.true.i.i861.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %mxl111sf_i2c_check_status.exit865.i

do.end.i.i863.i:                                  ; preds = %land.lhs.true.i.i861.i
  call void @__sanitizer_cov_trace_pc() #7
  %call3.i.i862.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.54, i32 noundef %call.i.i856.i, i32 noundef 322) #8
  br label %mxl111sf_i2c_check_status.exit865.i

mxl111sf_i2c_check_status.exit865.i:              ; preds = %do.end.i.i863.i, %land.lhs.true.i.i861.i.mxl111sf_i2c_check_status.exit865.i_crit_edge, %if.end.i858.i.mxl111sf_i2c_check_status.exit865.i_crit_edge
  %385 = ptrtoint ptr %55 to i32
  call void @__asan_load1_noabort(i32 %385)
  %386 = load i8, ptr %55, align 1
  call void @llvm.lifetime.end.p0(i64 26, ptr nonnull %buf.i851.i) #5
  %387 = and i8 %386, 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %387)
  %cmp337.not.i = icmp eq i8 %387, 0
  br i1 %cmp337.not.i, label %for.cond355.preheader.i, label %if.then339.i

for.cond355.preheader.i:                          ; preds = %mxl111sf_i2c_check_status.exit865.i
  %mul479.i = shl nuw nsw i32 %indvars.iv982.i, 3
  %add470.i = or i32 %mul479.i, 7
  br label %for.body358.i

if.then339.i:                                     ; preds = %mxl111sf_i2c_check_status.exit865.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @dvb_usb_mxl111sf_debug to i32))
  %388 = load i32, ptr @dvb_usb_mxl111sf_debug, align 4
  %and340.i = and i32 %388, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and340.i)
  %tobool341.not.i = icmp eq i32 %and340.i, 0
  br i1 %tobool341.not.i, label %if.then339.i.exit.sink.split.i_crit_edge, label %do.end345.i

if.then339.i.exit.sink.split.i_crit_edge:         ; preds = %if.then339.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %exit.sink.split.i

do.end345.i:                                      ; preds = %if.then339.i
  call void @__sanitizer_cov_trace_pc() #7
  %389 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load2_noabort(i32 %389)
  %390 = load i16, ptr %arrayidx, align 4
  %conv348.i = zext i16 %390 to i32
  %call349.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.30, ptr noundef nonnull @.str.9, i32 noundef %conv348.i) #8
  br label %exit.sink.split.i

for.body358.i:                                    ; preds = %for.inc483.i.for.body358.i_crit_edge, %for.cond355.preheader.i
  %i.3964.i = phi i32 [ 0, %for.cond355.preheader.i ], [ %inc484.i, %for.inc483.i.for.body358.i_crit_edge ]
  %mul359.i = mul nuw nsw i32 %i.3964.i, 3
  %add360.i = add nuw nsw i32 %mul359.i, 2
  %arrayidx361.i = getelementptr [24 x i8], ptr %i2c_r_data.i, i32 0, i32 %add360.i
  %391 = ptrtoint ptr %arrayidx361.i to i32
  call void @__asan_load1_noabort(i32 %391)
  %392 = load i8, ptr %arrayidx361.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 4, i8 %392)
  %cmp365.i = icmp eq i8 %392, 4
  br i1 %cmp365.i, label %if.then367.i, label %if.else473.i

if.then367.i:                                     ; preds = %for.body358.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %i.3964.i)
  %cmp368.i = icmp ult i32 %i.3964.i, 7
  br i1 %cmp368.i, label %if.then370.i, label %if.else463.i

if.then370.i:                                     ; preds = %if.then367.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @dvb_usb_mxl111sf_debug to i32))
  %393 = load i32, ptr @dvb_usb_mxl111sf_debug, align 4
  %and371.i = and i32 %393, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and371.i)
  %tobool372.not.i = icmp eq i32 %and371.i, 0
  br i1 %tobool372.not.i, label %if.then370.i.if.end379.i_crit_edge, label %do.end376.i

if.then370.i.if.end379.i_crit_edge:               ; preds = %if.then370.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end379.i

do.end376.i:                                      ; preds = %if.then370.i
  call void @__sanitizer_cov_trace_pc() #7
  %call378.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.37, ptr noundef nonnull @.str.9, i32 noundef %i.3964.i) #8
  br label %if.end379.i

if.end379.i:                                      ; preds = %do.end376.i, %if.then370.i.if.end379.i_crit_edge
  %add381.i = add nuw nsw i32 %mul359.i, 1
  %arrayidx382.i = getelementptr [24 x i8], ptr %i2c_r_data.i, i32 0, i32 %add381.i
  %394 = ptrtoint ptr %arrayidx382.i to i32
  call void @__asan_load1_noabort(i32 %394)
  %395 = load i8, ptr %arrayidx382.i, align 1
  %396 = ptrtoint ptr %buf477.i to i32
  call void @__asan_load4_noabort(i32 %396)
  %397 = load ptr, ptr %buf477.i, align 4
  %add386.i = add nuw i32 %i.3964.i, %mul479.i
  %arrayidx387.i = getelementptr i8, ptr %397, i32 %add386.i
  %398 = ptrtoint ptr %arrayidx387.i to i32
  call void @__asan_store1_noabort(i32 %398)
  store i8 %395, ptr %arrayidx387.i, align 1
  %sub.i = sub nuw nsw i32 7, %i.3964.i
  call void @llvm.lifetime.start.p0(i64 26, ptr nonnull %i2c_w_data.i.i) #5
  %399 = call ptr @memset(ptr %i2c_w_data.i.i, i32 255, i32 26)
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %i2c_r_data.i.i) #5
  %400 = call ptr @memset(ptr %i2c_r_data.i.i, i32 255, i32 24)
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @dvb_usb_mxl111sf_debug to i32))
  %401 = load i32, ptr @dvb_usb_mxl111sf_debug, align 4
  %and.i866.i = and i32 %401, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i866.i)
  %tobool.not.i.i = icmp eq i32 %and.i866.i, 0
  br i1 %tobool.not.i.i, label %if.end379.i.while.body.i.i.preheader_crit_edge, label %do.end.i868.i

if.end379.i.while.body.i.i.preheader_crit_edge:   ; preds = %if.end379.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.body.i.i.preheader

do.end.i868.i:                                    ; preds = %if.end379.i
  call void @__sanitizer_cov_trace_pc() #7
  %call.i867.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.55, ptr noundef nonnull @.str.56, i32 noundef %sub.i) #8
  br label %while.body.i.i.preheader

while.body.i.i.preheader:                         ; preds = %do.end.i868.i, %if.end379.i.while.body.i.i.preheader_crit_edge
  br label %while.body.i.i

while.body.i.i:                                   ; preds = %mxl111sf_i2c_check_fifo.exit.i.i.while.body.i.i_crit_edge, %while.body.i.i.preheader
  %i.0120.i.i = phi i8 [ %inc.i.i, %mxl111sf_i2c_check_fifo.exit.i.i.while.body.i.i_crit_edge ], [ 0, %while.body.i.i.preheader ]
  %inc.i.i = add nuw nsw i8 %i.0120.i.i, 1
  call void @llvm.lifetime.start.p0(i64 26, ptr nonnull %buf.i.i.i) #5
  %402 = call ptr @memset(ptr %71, i32 255, i32 17)
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @dvb_usb_mxl111sf_debug to i32))
  %403 = load i32, ptr @dvb_usb_mxl111sf_debug, align 4
  %and.i.i870.i = and i32 %403, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i870.i)
  %tobool.not.i.i.i = icmp eq i32 %and.i.i870.i, 0
  br i1 %tobool.not.i.i.i, label %while.body.i.i.if.end.i.i.i_crit_edge, label %do.end.i.i872.i

while.body.i.i.if.end.i.i.i_crit_edge:            ; preds = %while.body.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end.i.i.i

do.end.i.i872.i:                                  ; preds = %while.body.i.i
  call void @__sanitizer_cov_trace_pc() #7
  %call.i.i871.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.52, ptr noundef nonnull @.str.63) #8
  br label %if.end.i.i.i

if.end.i.i.i:                                     ; preds = %do.end.i.i872.i, %while.body.i.i.if.end.i.i.i_crit_edge
  %404 = ptrtoint ptr %buf.i.i.i to i32
  call void @__asan_store1_noabort(i32 %404)
  store i8 -35, ptr %buf.i.i.i, align 1
  %405 = ptrtoint ptr %63 to i32
  call void @__asan_store1_noabort(i32 %405)
  store i8 0, ptr %63, align 1
  %406 = ptrtoint ptr %64 to i32
  call void @__asan_store1_noabort(i32 %406)
  store i8 48, ptr %64, align 1
  %407 = ptrtoint ptr %65 to i32
  call void @__asan_store1_noabort(i32 %407)
  store i8 0, ptr %65, align 1
  %408 = ptrtoint ptr %66 to i32
  call void @__asan_store1_noabort(i32 %408)
  store i8 0, ptr %66, align 1
  %409 = ptrtoint ptr %67 to i32
  call void @__asan_store1_noabort(i32 %409)
  store i8 16, ptr %67, align 1
  %410 = ptrtoint ptr %68 to i32
  call void @__asan_store1_noabort(i32 %410)
  store i8 0, ptr %68, align 1
  %411 = ptrtoint ptr %69 to i32
  call void @__asan_store1_noabort(i32 %411)
  store i8 0, ptr %69, align 1
  %412 = ptrtoint ptr %70 to i32
  call void @__asan_store1_noabort(i32 %412)
  store i8 -2, ptr %70, align 1
  %call.i.i.i.i = call i32 @mxl111sf_ctrl_msg(ptr noundef %3, i8 noundef zeroext -35, ptr noundef %63, i32 noundef 25, ptr noundef nonnull %buf.i.i.i, i32 noundef 24) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i.i)
  %cmp.i.i.i.i = icmp slt i32 %call.i.i.i.i, 0
  br i1 %cmp.i.i.i.i, label %land.lhs.true.i.i.i.i, label %if.end.i.i.i.mxl111sf_i2c_get_data.exit.i.i.i_crit_edge

if.end.i.i.i.mxl111sf_i2c_get_data.exit.i.i.i_crit_edge: ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %mxl111sf_i2c_get_data.exit.i.i.i

land.lhs.true.i.i.i.i:                            ; preds = %if.end.i.i.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @dvb_usb_mxl111sf_debug to i32))
  %413 = load i32, ptr @dvb_usb_mxl111sf_debug, align 4
  %and.i.i.i.i = and i32 %413, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i)
  %tobool2.not.i.i.i.i = icmp eq i32 %and.i.i.i.i, 0
  br i1 %tobool2.not.i.i.i.i, label %land.lhs.true.i.i.i.i.mxl111sf_i2c_get_data.exit.i.i.i_crit_edge, label %do.end.i.i.i.i

land.lhs.true.i.i.i.i.mxl111sf_i2c_get_data.exit.i.i.i_crit_edge: ; preds = %land.lhs.true.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %mxl111sf_i2c_get_data.exit.i.i.i

do.end.i.i.i.i:                                   ; preds = %land.lhs.true.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #7
  %call3.i.i.i.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.54, i32 noundef %call.i.i.i.i, i32 noundef 322) #8
  br label %mxl111sf_i2c_get_data.exit.i.i.i

mxl111sf_i2c_get_data.exit.i.i.i:                 ; preds = %do.end.i.i.i.i, %land.lhs.true.i.i.i.i.mxl111sf_i2c_get_data.exit.i.i.i_crit_edge, %if.end.i.i.i.mxl111sf_i2c_get_data.exit.i.i.i_crit_edge
  %414 = ptrtoint ptr %63 to i32
  call void @__asan_load1_noabort(i32 %414)
  %415 = load i8, ptr %63, align 1
  %416 = ptrtoint ptr %67 to i32
  call void @__asan_load1_noabort(i32 %416)
  %417 = load i8, ptr %67, align 1
  %418 = and i8 %417, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %418)
  %cmp19.not.i.i.i = icmp eq i8 %418, 0
  br i1 %cmp19.not.i.i.i, label %mxl111sf_i2c_get_data.exit.i.i.i.mxl111sf_i2c_check_fifo.exit.i.i_crit_edge, label %if.then21.i.i.i

mxl111sf_i2c_get_data.exit.i.i.i.mxl111sf_i2c_check_fifo.exit.i.i_crit_edge: ; preds = %mxl111sf_i2c_get_data.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %mxl111sf_i2c_check_fifo.exit.i.i

if.then21.i.i.i:                                  ; preds = %mxl111sf_i2c_get_data.exit.i.i.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @dvb_usb_mxl111sf_debug to i32))
  %419 = load i32, ptr @dvb_usb_mxl111sf_debug, align 4
  %and22.i.i.i = and i32 %419, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and22.i.i.i)
  %tobool23.not.i.i.i = icmp eq i32 %and22.i.i.i, 0
  br i1 %tobool23.not.i.i.i, label %if.then21.i.i.i.mxl111sf_i2c_check_fifo.exit.i.i_crit_edge, label %do.end27.i.i.i

if.then21.i.i.i.mxl111sf_i2c_check_fifo.exit.i.i_crit_edge: ; preds = %if.then21.i.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %mxl111sf_i2c_check_fifo.exit.i.i

do.end27.i.i.i:                                   ; preds = %if.then21.i.i.i
  call void @__sanitizer_cov_trace_pc() #7
  %call29.i.i.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.65, ptr noundef nonnull @.str.63) #8
  br label %mxl111sf_i2c_check_fifo.exit.i.i

mxl111sf_i2c_check_fifo.exit.i.i:                 ; preds = %do.end27.i.i.i, %if.then21.i.i.i.mxl111sf_i2c_check_fifo.exit.i.i_crit_edge, %mxl111sf_i2c_get_data.exit.i.i.i.mxl111sf_i2c_check_fifo.exit.i.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 26, ptr nonnull %buf.i.i.i) #5
  %420 = and i8 %415, 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %420)
  %cmp.i873.i = icmp eq i8 %420, 0
  call void @__sanitizer_cov_trace_const_cmp1(i8 4, i8 %i.0120.i.i)
  %cmp4.i.i = icmp ult i8 %i.0120.i.i, 4
  %or.cond.i.i = select i1 %cmp.i873.i, i1 %cmp4.i.i, i1 false
  br i1 %or.cond.i.i, label %mxl111sf_i2c_check_fifo.exit.i.i.while.body.i.i_crit_edge, label %while.end.i.i

mxl111sf_i2c_check_fifo.exit.i.i.while.body.i.i_crit_edge: ; preds = %mxl111sf_i2c_check_fifo.exit.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.body.i.i

while.end.i.i:                                    ; preds = %mxl111sf_i2c_check_fifo.exit.i.i
  %421 = ptrtoint ptr %i2c_w_data.i.i to i32
  call void @__asan_store1_noabort(i32 %421)
  store i8 -35, ptr %i2c_w_data.i.i, align 1
  %422 = ptrtoint ptr %61 to i32
  call void @__asan_store1_noabort(i32 %422)
  store i8 0, ptr %61, align 1
  %423 = call ptr @memset(ptr %62, i32 254, i32 24)
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %i.3964.i)
  %424 = icmp eq i32 %i.3964.i, 7
  br i1 %424, label %while.end.i.i.for.end31.i.i_crit_edge, label %while.end.i.i.for.body18.i.i_crit_edge

while.end.i.i.for.body18.i.i_crit_edge:           ; preds = %while.end.i.i
  br label %for.body18.i.i

while.end.i.i.for.end31.i.i_crit_edge:            ; preds = %while.end.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end31.i.i

for.body18.i.i:                                   ; preds = %for.body18.i.i.for.body18.i.i_crit_edge, %while.end.i.i.for.body18.i.i_crit_edge
  %indvars.iv.i.i = phi i32 [ %indvars.iv.next.i.i, %for.body18.i.i.for.body18.i.i_crit_edge ], [ 0, %while.end.i.i.for.body18.i.i_crit_edge ]
  %mul.i.i = mul nuw nsw i32 %indvars.iv.i.i, 3
  %add.i.i = add nuw nsw i32 %mul.i.i, 2
  %arrayidx20.i.i = getelementptr [26 x i8], ptr %i2c_w_data.i.i, i32 0, i32 %add.i.i
  %425 = ptrtoint ptr %arrayidx20.i.i to i32
  call void @__asan_store1_noabort(i32 %425)
  store i8 12, ptr %arrayidx20.i.i, align 1
  %add23.i.i = add nuw nsw i32 %mul.i.i, 3
  %arrayidx24.i.i = getelementptr [26 x i8], ptr %i2c_w_data.i.i, i32 0, i32 %add23.i.i
  %426 = ptrtoint ptr %arrayidx24.i.i to i32
  call void @__asan_store1_noabort(i32 %426)
  store i8 0, ptr %arrayidx24.i.i, align 1
  %add27.i.i = add nuw nsw i32 %mul.i.i, 4
  %arrayidx28.i.i = getelementptr [26 x i8], ptr %i2c_w_data.i.i, i32 0, i32 %add27.i.i
  %427 = ptrtoint ptr %arrayidx28.i.i to i32
  call void @__asan_store1_noabort(i32 %427)
  store i8 0, ptr %arrayidx28.i.i, align 1
  %indvars.iv.next.i.i = add nuw nsw i32 %indvars.iv.i.i, 1
  %exitcond.not.i.i = icmp eq i32 %indvars.iv.next.i.i, %sub.i
  br i1 %exitcond.not.i.i, label %for.body18.i.i.for.end31.i.i_crit_edge, label %for.body18.i.i.for.body18.i.i_crit_edge

for.body18.i.i.for.body18.i.i_crit_edge:          ; preds = %for.body18.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body18.i.i

for.body18.i.i.for.end31.i.i_crit_edge:           ; preds = %for.body18.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end31.i.i

for.end31.i.i:                                    ; preds = %for.body18.i.i.for.end31.i.i_crit_edge, %while.end.i.i.for.end31.i.i_crit_edge
  %call.i101.i.i = call i32 @mxl111sf_ctrl_msg(ptr noundef %3, i8 noundef zeroext -35, ptr noundef %61, i32 noundef 25, ptr noundef nonnull %i2c_r_data.i.i, i32 noundef 24) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i101.i.i)
  %cmp.i.i874.i = icmp slt i32 %call.i101.i.i, 0
  br i1 %cmp.i.i874.i, label %land.lhs.true.i.i876.i, label %for.end31.i.i.mxl111sf_i2c_get_data.exit.i.i_crit_edge

for.end31.i.i.mxl111sf_i2c_get_data.exit.i.i_crit_edge: ; preds = %for.end31.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %mxl111sf_i2c_get_data.exit.i.i

land.lhs.true.i.i876.i:                           ; preds = %for.end31.i.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @dvb_usb_mxl111sf_debug to i32))
  %428 = load i32, ptr @dvb_usb_mxl111sf_debug, align 4
  %and.i102.i.i = and i32 %428, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i102.i.i)
  %tobool2.not.i.i875.i = icmp eq i32 %and.i102.i.i, 0
  br i1 %tobool2.not.i.i875.i, label %land.lhs.true.i.i876.i.mxl111sf_i2c_get_data.exit.i.i_crit_edge, label %do.end.i103.i.i

land.lhs.true.i.i876.i.mxl111sf_i2c_get_data.exit.i.i_crit_edge: ; preds = %land.lhs.true.i.i876.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %mxl111sf_i2c_get_data.exit.i.i

do.end.i103.i.i:                                  ; preds = %land.lhs.true.i.i876.i
  call void @__sanitizer_cov_trace_pc() #7
  %call3.i.i877.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.54, i32 noundef %call.i101.i.i, i32 noundef 322) #8
  br label %mxl111sf_i2c_get_data.exit.i.i

mxl111sf_i2c_get_data.exit.i.i:                   ; preds = %do.end.i103.i.i, %land.lhs.true.i.i876.i.mxl111sf_i2c_get_data.exit.i.i_crit_edge, %for.end31.i.i.mxl111sf_i2c_get_data.exit.i.i_crit_edge
  call void @llvm.lifetime.start.p0(i64 26, ptr nonnull %buf.i105.i.i) #5
  %429 = call ptr @memset(ptr %77, i32 255, i32 20)
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @dvb_usb_mxl111sf_debug to i32))
  %430 = load i32, ptr @dvb_usb_mxl111sf_debug, align 4
  %and.i106.i.i = and i32 %430, 20
  call void @__sanitizer_cov_trace_const_cmp4(i32 20, i32 %and.i106.i.i)
  %cmp.i107.i.i = icmp eq i32 %and.i106.i.i, 20
  br i1 %cmp.i107.i.i, label %do.end.i109.i.i, label %mxl111sf_i2c_get_data.exit.i.i.if.end.i112.i.i_crit_edge

mxl111sf_i2c_get_data.exit.i.i.if.end.i112.i.i_crit_edge: ; preds = %mxl111sf_i2c_get_data.exit.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end.i112.i.i

do.end.i109.i.i:                                  ; preds = %mxl111sf_i2c_get_data.exit.i.i
  call void @__sanitizer_cov_trace_pc() #7
  %call.i108.i.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.52, ptr noundef nonnull @.str.53) #8
  br label %if.end.i112.i.i

if.end.i112.i.i:                                  ; preds = %do.end.i109.i.i, %mxl111sf_i2c_get_data.exit.i.i.if.end.i112.i.i_crit_edge
  %431 = ptrtoint ptr %buf.i105.i.i to i32
  call void @__asan_store1_noabort(i32 %431)
  store i8 -35, ptr %buf.i105.i.i, align 1
  %432 = ptrtoint ptr %72 to i32
  call void @__asan_store1_noabort(i32 %432)
  store i8 0, ptr %72, align 1
  %433 = ptrtoint ptr %73 to i32
  call void @__asan_store1_noabort(i32 %433)
  store i8 16, ptr %73, align 1
  %434 = ptrtoint ptr %74 to i32
  call void @__asan_store1_noabort(i32 %434)
  store i8 0, ptr %74, align 1
  %435 = ptrtoint ptr %75 to i32
  call void @__asan_store1_noabort(i32 %435)
  store i8 0, ptr %75, align 1
  %436 = ptrtoint ptr %76 to i32
  call void @__asan_store1_noabort(i32 %436)
  store i8 -2, ptr %76, align 1
  %call.i.i110.i.i = call i32 @mxl111sf_ctrl_msg(ptr noundef %3, i8 noundef zeroext -35, ptr noundef %72, i32 noundef 25, ptr noundef nonnull %buf.i105.i.i, i32 noundef 24) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i110.i.i)
  %cmp.i.i111.i.i = icmp slt i32 %call.i.i110.i.i, 0
  br i1 %cmp.i.i111.i.i, label %land.lhs.true.i.i115.i.i, label %if.end.i112.i.i.mxl111sf_i2c_check_status.exit.i.i_crit_edge

if.end.i112.i.i.mxl111sf_i2c_check_status.exit.i.i_crit_edge: ; preds = %if.end.i112.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %mxl111sf_i2c_check_status.exit.i.i

land.lhs.true.i.i115.i.i:                         ; preds = %if.end.i112.i.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @dvb_usb_mxl111sf_debug to i32))
  %437 = load i32, ptr @dvb_usb_mxl111sf_debug, align 4
  %and.i.i113.i.i = and i32 %437, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i113.i.i)
  %tobool2.not.i.i114.i.i = icmp eq i32 %and.i.i113.i.i, 0
  br i1 %tobool2.not.i.i114.i.i, label %land.lhs.true.i.i115.i.i.mxl111sf_i2c_check_status.exit.i.i_crit_edge, label %do.end.i.i117.i.i

land.lhs.true.i.i115.i.i.mxl111sf_i2c_check_status.exit.i.i_crit_edge: ; preds = %land.lhs.true.i.i115.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %mxl111sf_i2c_check_status.exit.i.i

do.end.i.i117.i.i:                                ; preds = %land.lhs.true.i.i115.i.i
  call void @__sanitizer_cov_trace_pc() #7
  %call3.i.i116.i.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.54, i32 noundef %call.i.i110.i.i, i32 noundef 322) #8
  br label %mxl111sf_i2c_check_status.exit.i.i

mxl111sf_i2c_check_status.exit.i.i:               ; preds = %do.end.i.i117.i.i, %land.lhs.true.i.i115.i.i.mxl111sf_i2c_check_status.exit.i.i_crit_edge, %if.end.i112.i.i.mxl111sf_i2c_check_status.exit.i.i_crit_edge
  %438 = ptrtoint ptr %72 to i32
  call void @__asan_load1_noabort(i32 %438)
  %439 = load i8, ptr %72, align 1
  call void @llvm.lifetime.end.p0(i64 26, ptr nonnull %buf.i105.i.i) #5
  %440 = and i8 %439, 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %440)
  %cmp36.not.i.i = icmp eq i8 %440, 0
  br i1 %cmp36.not.i.i, label %for.cond48.preheader.i.i, label %if.then38.i.i

for.cond48.preheader.i.i:                         ; preds = %mxl111sf_i2c_check_status.exit.i.i
  br i1 %424, label %mxl111sf_i2c_readagain.exit.thread.i, label %for.body53.preheader.i.i

mxl111sf_i2c_readagain.exit.thread.i:             ; preds = %for.cond48.preheader.i.i
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %i2c_r_data.i.i) #5
  call void @llvm.lifetime.end.p0(i64 26, ptr nonnull %i2c_w_data.i.i) #5
  br label %for.inc486.i

for.body53.preheader.i.i:                         ; preds = %for.cond48.preheader.i.i
  %wide.trip.count128.i.i = and i32 %sub.i, 255
  br label %for.body53.i.i

if.then38.i.i:                                    ; preds = %mxl111sf_i2c_check_status.exit.i.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @dvb_usb_mxl111sf_debug to i32))
  %441 = load i32, ptr @dvb_usb_mxl111sf_debug, align 4
  %and39.i.i = and i32 %441, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and39.i.i)
  %tobool40.not.i.i = icmp eq i32 %and39.i.i, 0
  br i1 %tobool40.not.i.i, label %if.then38.i.i.if.else.i_crit_edge, label %do.end44.i.i

if.then38.i.i.if.else.i_crit_edge:                ; preds = %if.then38.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.else.i

do.end44.i.i:                                     ; preds = %if.then38.i.i
  call void @__sanitizer_cov_trace_pc() #7
  %call46.i.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.58, ptr noundef nonnull @.str.56) #8
  br label %if.else.i

for.body53.i.i:                                   ; preds = %for.inc79.i.i.for.body53.i.i_crit_edge, %for.body53.preheader.i.i
  %indvars.iv126.i.i = phi i32 [ 0, %for.body53.preheader.i.i ], [ %indvars.iv.next127.i.i, %for.inc79.i.i.for.body53.i.i_crit_edge ]
  %mul55.i.i = mul nuw nsw i32 %indvars.iv126.i.i, 3
  %add56.i.i = add nuw nsw i32 %mul55.i.i, 1
  %arrayidx57.i.i = getelementptr [24 x i8], ptr %i2c_r_data.i.i, i32 0, i32 %add56.i.i
  %442 = ptrtoint ptr %arrayidx57.i.i to i32
  call void @__asan_load1_noabort(i32 %442)
  %443 = load i8, ptr %arrayidx57.i.i, align 1
  %arrayidx59.i.i = getelementptr i8, ptr %readbuff.i, i32 %indvars.iv126.i.i
  %444 = ptrtoint ptr %arrayidx59.i.i to i32
  call void @__asan_store1_noabort(i32 %444)
  store i8 %443, ptr %arrayidx59.i.i, align 1
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @dvb_usb_mxl111sf_debug to i32))
  %445 = load i32, ptr @dvb_usb_mxl111sf_debug, align 4
  %and60.i.i = and i32 %445, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and60.i.i)
  %tobool61.not.i.i = icmp eq i32 %and60.i.i, 0
  br i1 %tobool61.not.i.i, label %for.body53.i.i.for.inc79.i.i_crit_edge, label %do.end65.i.i

for.body53.i.i.for.inc79.i.i_crit_edge:           ; preds = %for.body53.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc79.i.i

do.end65.i.i:                                     ; preds = %for.body53.i.i
  call void @__sanitizer_cov_trace_pc() #7
  %conv71.i.i = zext i8 %443 to i32
  %add74.i.i = add nuw nsw i32 %mul55.i.i, 2
  %arrayidx75.i.i = getelementptr [24 x i8], ptr %i2c_r_data.i.i, i32 0, i32 %add74.i.i
  %446 = ptrtoint ptr %arrayidx75.i.i to i32
  call void @__asan_load1_noabort(i32 %446)
  %447 = load i8, ptr %arrayidx75.i.i, align 1
  %conv76.i.i = zext i8 %447 to i32
  %call77.i.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.61, ptr noundef nonnull @.str.56, i32 noundef %conv71.i.i, i32 noundef %conv76.i.i) #8
  br label %for.inc79.i.i

for.inc79.i.i:                                    ; preds = %do.end65.i.i, %for.body53.i.i.for.inc79.i.i_crit_edge
  %indvars.iv.next127.i.i = add nuw nsw i32 %indvars.iv126.i.i, 1
  %exitcond129.not.i.i = icmp eq i32 %indvars.iv.next127.i.i, %wide.trip.count128.i.i
  br i1 %exitcond129.not.i.i, label %mxl111sf_i2c_readagain.exit.i, label %for.inc79.i.i.for.body53.i.i_crit_edge

for.inc79.i.i.for.body53.i.i_crit_edge:           ; preds = %for.inc79.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body53.i.i

mxl111sf_i2c_readagain.exit.i:                    ; preds = %for.inc79.i.i
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %i2c_r_data.i.i) #5
  call void @llvm.lifetime.end.p0(i64 26, ptr nonnull %i2c_w_data.i.i) #5
  br label %for.body402.i

for.body402.i:                                    ; preds = %for.inc450.i.for.body402.i_crit_edge, %mxl111sf_i2c_readagain.exit.i
  %k.1967.i = phi i32 [ %inc451.i, %for.inc450.i.for.body402.i_crit_edge ], [ 0, %mxl111sf_i2c_readagain.exit.i ]
  %arrayidx403.i = getelementptr [26 x i8], ptr %readbuff.i, i32 0, i32 %k.1967.i
  %448 = ptrtoint ptr %arrayidx403.i to i32
  call void @__asan_load1_noabort(i32 %448)
  %449 = load i8, ptr %arrayidx403.i, align 1
  %450 = ptrtoint ptr %buf477.i to i32
  call void @__asan_load4_noabort(i32 %450)
  %451 = load ptr, ptr %buf477.i, align 4
  %add408.i = add i32 %add386.i, %k.1967.i
  %add409.i = add i32 %add408.i, 1
  %arrayidx410.i = getelementptr i8, ptr %451, i32 %add409.i
  %452 = ptrtoint ptr %arrayidx410.i to i32
  call void @__asan_store1_noabort(i32 %452)
  store i8 %449, ptr %arrayidx410.i, align 1
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @dvb_usb_mxl111sf_debug to i32))
  %453 = load i32, ptr @dvb_usb_mxl111sf_debug, align 4
  %and411.i = and i32 %453, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and411.i)
  %tobool412.not.i = icmp eq i32 %and411.i, 0
  br i1 %tobool412.not.i, label %for.body402.i.if.end430.i_crit_edge, label %do.end416.i

for.body402.i.if.end430.i_crit_edge:              ; preds = %for.body402.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end430.i

do.end416.i:                                      ; preds = %for.body402.i
  call void @__sanitizer_cov_trace_pc() #7
  %454 = ptrtoint ptr %buf477.i to i32
  call void @__asan_load4_noabort(i32 %454)
  %455 = load ptr, ptr %buf477.i, align 4
  %arrayidx423.i = getelementptr i8, ptr %455, i32 %add408.i
  %456 = ptrtoint ptr %arrayidx423.i to i32
  call void @__asan_load1_noabort(i32 %456)
  %457 = load i8, ptr %arrayidx423.i, align 1
  %conv424.i = zext i8 %457 to i32
  %call429.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.40, ptr noundef nonnull @.str.9, i32 noundef %conv424.i, i32 noundef %add408.i) #8
  br label %if.end430.i

if.end430.i:                                      ; preds = %do.end416.i, %for.body402.i.if.end430.i_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @dvb_usb_mxl111sf_debug to i32))
  %458 = load i32, ptr @dvb_usb_mxl111sf_debug, align 4
  %and431.i = and i32 %458, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and431.i)
  %tobool432.not.i = icmp eq i32 %and431.i, 0
  br i1 %tobool432.not.i, label %if.end430.i.for.inc450.i_crit_edge, label %do.end436.i

if.end430.i.for.inc450.i_crit_edge:               ; preds = %if.end430.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc450.i

do.end436.i:                                      ; preds = %if.end430.i
  call void @__sanitizer_cov_trace_pc() #7
  %459 = ptrtoint ptr %buf477.i to i32
  call void @__asan_load4_noabort(i32 %459)
  %460 = load ptr, ptr %buf477.i, align 4
  %arrayidx444.i = getelementptr i8, ptr %460, i32 %add409.i
  %461 = ptrtoint ptr %arrayidx444.i to i32
  call void @__asan_load1_noabort(i32 %461)
  %462 = load i8, ptr %arrayidx444.i, align 1
  %conv445.i = zext i8 %462 to i32
  %conv447.i = zext i8 %449 to i32
  %call448.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.40, ptr noundef nonnull @.str.9, i32 noundef %conv445.i, i32 noundef %conv447.i) #8
  br label %for.inc450.i

for.inc450.i:                                     ; preds = %do.end436.i, %if.end430.i.for.inc450.i_crit_edge
  %inc451.i = add nuw nsw i32 %k.1967.i, 1
  %exitcond981.not.i = icmp eq i32 %inc451.i, %sub.i
  br i1 %exitcond981.not.i, label %for.inc450.i.for.inc486.i_crit_edge, label %for.inc450.i.for.body402.i_crit_edge

for.inc450.i.for.body402.i_crit_edge:             ; preds = %for.inc450.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body402.i

for.inc450.i.for.inc486.i_crit_edge:              ; preds = %for.inc450.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc486.i

if.else.i:                                        ; preds = %do.end44.i.i, %if.then38.i.i.if.else.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %i2c_r_data.i.i) #5
  call void @llvm.lifetime.end.p0(i64 26, ptr nonnull %i2c_w_data.i.i) #5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @dvb_usb_mxl111sf_debug to i32))
  %463 = load i32, ptr @dvb_usb_mxl111sf_debug, align 4
  %and453.i = and i32 %463, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and453.i)
  %tobool454.not.i = icmp eq i32 %and453.i, 0
  br i1 %tobool454.not.i, label %if.else.i.for.inc483.i_crit_edge, label %do.end458.i

if.else.i.for.inc483.i_crit_edge:                 ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc483.i

do.end458.i:                                      ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #7
  %call460.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.45, ptr noundef nonnull @.str.9) #8
  br label %for.inc483.i

if.else463.i:                                     ; preds = %if.then367.i
  call void @__sanitizer_cov_trace_pc() #7
  %add465.i = add nuw nsw i32 %mul359.i, 1
  %arrayidx466.i = getelementptr [24 x i8], ptr %i2c_r_data.i, i32 0, i32 %add465.i
  %464 = ptrtoint ptr %arrayidx466.i to i32
  call void @__asan_load1_noabort(i32 %464)
  %465 = load i8, ptr %arrayidx466.i, align 1
  %466 = ptrtoint ptr %buf477.i to i32
  call void @__asan_load4_noabort(i32 %466)
  %467 = load ptr, ptr %buf477.i, align 4
  %arrayidx471.i = getelementptr i8, ptr %467, i32 %add470.i
  %468 = ptrtoint ptr %arrayidx471.i to i32
  call void @__asan_store1_noabort(i32 %468)
  store i8 %465, ptr %arrayidx471.i, align 1
  br label %for.inc483.i

if.else473.i:                                     ; preds = %for.body358.i
  call void @__sanitizer_cov_trace_pc() #7
  %add475.i = add nuw nsw i32 %mul359.i, 1
  %arrayidx476.i = getelementptr [24 x i8], ptr %i2c_r_data.i, i32 0, i32 %add475.i
  %469 = ptrtoint ptr %arrayidx476.i to i32
  call void @__asan_load1_noabort(i32 %469)
  %470 = load i8, ptr %arrayidx476.i, align 1
  %471 = ptrtoint ptr %buf477.i to i32
  call void @__asan_load4_noabort(i32 %471)
  %472 = load ptr, ptr %buf477.i, align 4
  %add480.i = add nuw nsw i32 %i.3964.i, %mul479.i
  %arrayidx481.i = getelementptr i8, ptr %472, i32 %add480.i
  %473 = ptrtoint ptr %arrayidx481.i to i32
  call void @__asan_store1_noabort(i32 %473)
  store i8 %470, ptr %arrayidx481.i, align 1
  br label %for.inc483.i

for.inc483.i:                                     ; preds = %if.else473.i, %if.else463.i, %do.end458.i, %if.else.i.for.inc483.i_crit_edge
  %inc484.i = add nuw nsw i32 %i.3964.i, 1
  %exitcond980.not.i = icmp eq i32 %inc484.i, 8
  br i1 %exitcond980.not.i, label %for.inc483.i.for.inc486.i_crit_edge, label %for.inc483.i.for.body358.i_crit_edge

for.inc483.i.for.body358.i_crit_edge:             ; preds = %for.inc483.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body358.i

for.inc483.i.for.inc486.i_crit_edge:              ; preds = %for.inc483.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc486.i

for.inc486.i:                                     ; preds = %for.inc483.i.for.inc486.i_crit_edge, %for.inc450.i.for.inc486.i_crit_edge, %mxl111sf_i2c_readagain.exit.thread.i
  %indvars.iv.next983.i = add nuw nsw i32 %indvars.iv982.i, 1
  %exitcond986.not.i = icmp eq i32 %indvars.iv.next983.i, %wide.trip.count985.i
  br i1 %exitcond986.not.i, label %for.inc486.i.for.end488.i_crit_edge, label %for.inc486.i.for.cond316.preheader.i_crit_edge

for.inc486.i.for.cond316.preheader.i_crit_edge:   ; preds = %for.inc486.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.cond316.preheader.i

for.inc486.i.for.end488.i_crit_edge:              ; preds = %for.inc486.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end488.i

for.end488.i:                                     ; preds = %for.inc486.i.for.end488.i_crit_edge, %if.end307.i.for.end488.i_crit_edge
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %345)
  %tobool489.not.i = icmp eq i16 %345, 0
  br i1 %tobool489.not.i, label %for.end488.i.if.end574.i_crit_edge, label %for.body494.preheader.i

for.end488.i.if.end574.i_crit_edge:               ; preds = %for.end488.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end574.i

for.body494.preheader.i:                          ; preds = %for.end488.i
  %474 = call ptr @memset(ptr %7, i32 254, i32 24)
  %475 = ptrtoint ptr %buf.i to i32
  call void @__asan_store1_noabort(i32 %475)
  store i8 -35, ptr %buf.i, align 1
  %476 = ptrtoint ptr %6 to i32
  call void @__asan_store1_noabort(i32 %476)
  store i8 0, ptr %6, align 1
  %477 = ptrtoint ptr %arrayidx508.i to i32
  call void @__asan_store1_noabort(i32 %477)
  store i8 12, ptr %arrayidx508.i, align 1
  %478 = ptrtoint ptr %arrayidx511.i to i32
  call void @__asan_store1_noabort(i32 %478)
  store i8 0, ptr %arrayidx511.i, align 1
  %479 = ptrtoint ptr %arrayidx514.i to i32
  call void @__asan_store1_noabort(i32 %479)
  store i8 0, ptr %arrayidx514.i, align 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 1, i16 %345)
  %exitcond987.not.i = icmp eq i16 %345, 1
  br i1 %exitcond987.not.i, label %for.body494.preheader.i.for.end517.i_crit_edge, label %for.body505.i.1

for.body494.preheader.i.for.end517.i_crit_edge:   ; preds = %for.body494.preheader.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end517.i

for.body505.i.1:                                  ; preds = %for.body494.preheader.i
  %480 = ptrtoint ptr %arrayidx508.i.1 to i32
  call void @__asan_store1_noabort(i32 %480)
  store i8 12, ptr %arrayidx508.i.1, align 1
  %481 = ptrtoint ptr %arrayidx511.i.1 to i32
  call void @__asan_store1_noabort(i32 %481)
  store i8 0, ptr %arrayidx511.i.1, align 1
  %482 = ptrtoint ptr %arrayidx514.i.1 to i32
  call void @__asan_store1_noabort(i32 %482)
  store i8 0, ptr %arrayidx514.i.1, align 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 2, i16 %345)
  %exitcond987.not.i.1 = icmp eq i16 %345, 2
  br i1 %exitcond987.not.i.1, label %for.body505.i.1.for.end517.i_crit_edge, label %for.body505.i.2

for.body505.i.1.for.end517.i_crit_edge:           ; preds = %for.body505.i.1
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end517.i

for.body505.i.2:                                  ; preds = %for.body505.i.1
  %483 = ptrtoint ptr %arrayidx508.i.2 to i32
  call void @__asan_store1_noabort(i32 %483)
  store i8 12, ptr %arrayidx508.i.2, align 1
  %484 = ptrtoint ptr %arrayidx511.i.2 to i32
  call void @__asan_store1_noabort(i32 %484)
  store i8 0, ptr %arrayidx511.i.2, align 1
  %485 = ptrtoint ptr %arrayidx514.i.2 to i32
  call void @__asan_store1_noabort(i32 %485)
  store i8 0, ptr %arrayidx514.i.2, align 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 3, i16 %345)
  %exitcond987.not.i.2 = icmp eq i16 %345, 3
  br i1 %exitcond987.not.i.2, label %for.body505.i.2.for.end517.i_crit_edge, label %for.body505.i.3

for.body505.i.2.for.end517.i_crit_edge:           ; preds = %for.body505.i.2
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end517.i

for.body505.i.3:                                  ; preds = %for.body505.i.2
  %486 = ptrtoint ptr %arrayidx508.i.3 to i32
  call void @__asan_store1_noabort(i32 %486)
  store i8 12, ptr %arrayidx508.i.3, align 1
  %487 = ptrtoint ptr %arrayidx511.i.3 to i32
  call void @__asan_store1_noabort(i32 %487)
  store i8 0, ptr %arrayidx511.i.3, align 1
  %488 = ptrtoint ptr %arrayidx514.i.3 to i32
  call void @__asan_store1_noabort(i32 %488)
  store i8 0, ptr %arrayidx514.i.3, align 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 4, i16 %345)
  %exitcond987.not.i.3 = icmp eq i16 %345, 4
  br i1 %exitcond987.not.i.3, label %for.body505.i.3.for.end517.i_crit_edge, label %for.body505.i.4

for.body505.i.3.for.end517.i_crit_edge:           ; preds = %for.body505.i.3
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end517.i

for.body505.i.4:                                  ; preds = %for.body505.i.3
  %489 = ptrtoint ptr %arrayidx508.i.4 to i32
  call void @__asan_store1_noabort(i32 %489)
  store i8 12, ptr %arrayidx508.i.4, align 1
  %490 = ptrtoint ptr %arrayidx511.i.4 to i32
  call void @__asan_store1_noabort(i32 %490)
  store i8 0, ptr %arrayidx511.i.4, align 1
  %491 = ptrtoint ptr %arrayidx514.i.4 to i32
  call void @__asan_store1_noabort(i32 %491)
  store i8 0, ptr %arrayidx514.i.4, align 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 5, i16 %345)
  %exitcond987.not.i.4 = icmp eq i16 %345, 5
  br i1 %exitcond987.not.i.4, label %for.body505.i.4.for.end517.i_crit_edge, label %for.body505.i.5

for.body505.i.4.for.end517.i_crit_edge:           ; preds = %for.body505.i.4
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end517.i

for.body505.i.5:                                  ; preds = %for.body505.i.4
  %492 = ptrtoint ptr %arrayidx508.i.5 to i32
  call void @__asan_store1_noabort(i32 %492)
  store i8 12, ptr %arrayidx508.i.5, align 1
  %493 = ptrtoint ptr %arrayidx511.i.5 to i32
  call void @__asan_store1_noabort(i32 %493)
  store i8 0, ptr %arrayidx511.i.5, align 1
  %494 = ptrtoint ptr %arrayidx514.i.5 to i32
  call void @__asan_store1_noabort(i32 %494)
  store i8 0, ptr %arrayidx514.i.5, align 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 6, i16 %345)
  %exitcond987.not.i.5 = icmp eq i16 %345, 6
  br i1 %exitcond987.not.i.5, label %for.body505.i.5.for.end517.i_crit_edge, label %for.body505.i.6

for.body505.i.5.for.end517.i_crit_edge:           ; preds = %for.body505.i.5
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end517.i

for.body505.i.6:                                  ; preds = %for.body505.i.5
  call void @__sanitizer_cov_trace_pc() #7
  %495 = ptrtoint ptr %arrayidx508.i.6 to i32
  call void @__asan_store1_noabort(i32 %495)
  store i8 12, ptr %arrayidx508.i.6, align 1
  %496 = ptrtoint ptr %arrayidx511.i.6 to i32
  call void @__asan_store1_noabort(i32 %496)
  store i8 0, ptr %arrayidx511.i.6, align 1
  %497 = ptrtoint ptr %arrayidx514.i.6 to i32
  call void @__asan_store1_noabort(i32 %497)
  store i8 0, ptr %arrayidx514.i.6, align 1
  br label %for.end517.i

for.end517.i:                                     ; preds = %for.body505.i.6, %for.body505.i.5.for.end517.i_crit_edge, %for.body505.i.4.for.end517.i_crit_edge, %for.body505.i.3.for.end517.i_crit_edge, %for.body505.i.2.for.end517.i_crit_edge, %for.body505.i.1.for.end517.i_crit_edge, %for.body494.preheader.i.for.end517.i_crit_edge
  %call.i879.i = call i32 @mxl111sf_ctrl_msg(ptr noundef %3, i8 noundef zeroext -35, ptr noundef %6, i32 noundef 25, ptr noundef nonnull %i2c_r_data.i, i32 noundef 24) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i879.i)
  %cmp.i880.i = icmp slt i32 %call.i879.i, 0
  br i1 %cmp.i880.i, label %land.lhs.true.i883.i, label %for.end517.i.mxl111sf_i2c_get_data.exit887.i_crit_edge

for.end517.i.mxl111sf_i2c_get_data.exit887.i_crit_edge: ; preds = %for.end517.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %mxl111sf_i2c_get_data.exit887.i

land.lhs.true.i883.i:                             ; preds = %for.end517.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @dvb_usb_mxl111sf_debug to i32))
  %498 = load i32, ptr @dvb_usb_mxl111sf_debug, align 4
  %and.i881.i = and i32 %498, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i881.i)
  %tobool2.not.i882.i = icmp eq i32 %and.i881.i, 0
  br i1 %tobool2.not.i882.i, label %land.lhs.true.i883.i.mxl111sf_i2c_get_data.exit887.i_crit_edge, label %do.end.i885.i

land.lhs.true.i883.i.mxl111sf_i2c_get_data.exit887.i_crit_edge: ; preds = %land.lhs.true.i883.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %mxl111sf_i2c_get_data.exit887.i

do.end.i885.i:                                    ; preds = %land.lhs.true.i883.i
  call void @__sanitizer_cov_trace_pc() #7
  %call3.i884.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.54, i32 noundef %call.i879.i, i32 noundef 322) #8
  br label %mxl111sf_i2c_get_data.exit887.i

mxl111sf_i2c_get_data.exit887.i:                  ; preds = %do.end.i885.i, %land.lhs.true.i883.i.mxl111sf_i2c_get_data.exit887.i_crit_edge, %for.end517.i.mxl111sf_i2c_get_data.exit887.i_crit_edge
  call void @llvm.lifetime.start.p0(i64 26, ptr nonnull %buf.i888.i) #5
  %499 = call ptr @memset(ptr %83, i32 255, i32 20)
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @dvb_usb_mxl111sf_debug to i32))
  %500 = load i32, ptr @dvb_usb_mxl111sf_debug, align 4
  %and.i889.i = and i32 %500, 20
  call void @__sanitizer_cov_trace_const_cmp4(i32 20, i32 %and.i889.i)
  %cmp.i890.i = icmp eq i32 %and.i889.i, 20
  br i1 %cmp.i890.i, label %do.end.i892.i, label %mxl111sf_i2c_get_data.exit887.i.if.end.i895.i_crit_edge

mxl111sf_i2c_get_data.exit887.i.if.end.i895.i_crit_edge: ; preds = %mxl111sf_i2c_get_data.exit887.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end.i895.i

do.end.i892.i:                                    ; preds = %mxl111sf_i2c_get_data.exit887.i
  call void @__sanitizer_cov_trace_pc() #7
  %call.i891.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.52, ptr noundef nonnull @.str.53) #8
  br label %if.end.i895.i

if.end.i895.i:                                    ; preds = %do.end.i892.i, %mxl111sf_i2c_get_data.exit887.i.if.end.i895.i_crit_edge
  %501 = ptrtoint ptr %buf.i888.i to i32
  call void @__asan_store1_noabort(i32 %501)
  store i8 -35, ptr %buf.i888.i, align 1
  %502 = ptrtoint ptr %78 to i32
  call void @__asan_store1_noabort(i32 %502)
  store i8 0, ptr %78, align 1
  %503 = ptrtoint ptr %79 to i32
  call void @__asan_store1_noabort(i32 %503)
  store i8 16, ptr %79, align 1
  %504 = ptrtoint ptr %80 to i32
  call void @__asan_store1_noabort(i32 %504)
  store i8 0, ptr %80, align 1
  %505 = ptrtoint ptr %81 to i32
  call void @__asan_store1_noabort(i32 %505)
  store i8 0, ptr %81, align 1
  %506 = ptrtoint ptr %82 to i32
  call void @__asan_store1_noabort(i32 %506)
  store i8 -2, ptr %82, align 1
  %call.i.i893.i = call i32 @mxl111sf_ctrl_msg(ptr noundef %3, i8 noundef zeroext -35, ptr noundef %78, i32 noundef 25, ptr noundef nonnull %buf.i888.i, i32 noundef 24) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i893.i)
  %cmp.i.i894.i = icmp slt i32 %call.i.i893.i, 0
  br i1 %cmp.i.i894.i, label %land.lhs.true.i.i898.i, label %if.end.i895.i.mxl111sf_i2c_check_status.exit903.i_crit_edge

if.end.i895.i.mxl111sf_i2c_check_status.exit903.i_crit_edge: ; preds = %if.end.i895.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %mxl111sf_i2c_check_status.exit903.i

land.lhs.true.i.i898.i:                           ; preds = %if.end.i895.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @dvb_usb_mxl111sf_debug to i32))
  %507 = load i32, ptr @dvb_usb_mxl111sf_debug, align 4
  %and.i.i896.i = and i32 %507, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i896.i)
  %tobool2.not.i.i897.i = icmp eq i32 %and.i.i896.i, 0
  br i1 %tobool2.not.i.i897.i, label %land.lhs.true.i.i898.i.mxl111sf_i2c_check_status.exit903.i_crit_edge, label %do.end.i.i900.i

land.lhs.true.i.i898.i.mxl111sf_i2c_check_status.exit903.i_crit_edge: ; preds = %land.lhs.true.i.i898.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %mxl111sf_i2c_check_status.exit903.i

do.end.i.i900.i:                                  ; preds = %land.lhs.true.i.i898.i
  call void @__sanitizer_cov_trace_pc() #7
  %call3.i.i899.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.54, i32 noundef %call.i.i893.i, i32 noundef 322) #8
  br label %mxl111sf_i2c_check_status.exit903.i

mxl111sf_i2c_check_status.exit903.i:              ; preds = %do.end.i.i900.i, %land.lhs.true.i.i898.i.mxl111sf_i2c_check_status.exit903.i_crit_edge, %if.end.i895.i.mxl111sf_i2c_check_status.exit903.i_crit_edge
  %508 = ptrtoint ptr %78 to i32
  call void @__asan_load1_noabort(i32 %508)
  %509 = load i8, ptr %78, align 1
  call void @llvm.lifetime.end.p0(i64 26, ptr nonnull %buf.i888.i) #5
  %510 = and i8 %509, 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %510)
  %cmp523.not.i = icmp eq i8 %510, 0
  br i1 %cmp523.not.i, label %for.cond541.preheader.i, label %if.then525.i

for.cond541.preheader.i:                          ; preds = %mxl111sf_i2c_check_status.exit903.i
  %buf549.i = getelementptr %struct.i2c_msg, ptr %msg, i32 %i.0161, i32 3
  %511 = and i16 %344, -8
  %mul551.i = zext i16 %511 to i32
  %512 = call i16 @llvm.umax.i16(i16 %345, i16 1)
  %513 = ptrtoint ptr %arrayidx548.i to i32
  call void @__asan_load1_noabort(i32 %513)
  %514 = load i8, ptr %arrayidx548.i, align 1
  %515 = ptrtoint ptr %buf549.i to i32
  call void @__asan_load4_noabort(i32 %515)
  %516 = load ptr, ptr %buf549.i, align 4
  %arrayidx553.i = getelementptr i8, ptr %516, i32 %mul551.i
  %517 = ptrtoint ptr %arrayidx553.i to i32
  call void @__asan_store1_noabort(i32 %517)
  store i8 %514, ptr %arrayidx553.i, align 1
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @dvb_usb_mxl111sf_debug to i32))
  %518 = load i32, ptr @dvb_usb_mxl111sf_debug, align 4
  %and554.i = and i32 %518, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and554.i)
  %tobool555.not.i = icmp eq i32 %and554.i, 0
  br i1 %tobool555.not.i, label %for.cond541.preheader.i.for.inc571.i_crit_edge, label %do.end559.i

for.cond541.preheader.i.for.inc571.i_crit_edge:   ; preds = %for.cond541.preheader.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc571.i

if.then525.i:                                     ; preds = %mxl111sf_i2c_check_status.exit903.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @dvb_usb_mxl111sf_debug to i32))
  %519 = load i32, ptr @dvb_usb_mxl111sf_debug, align 4
  %and526.i = and i32 %519, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and526.i)
  %tobool527.not.i = icmp eq i32 %and526.i, 0
  br i1 %tobool527.not.i, label %if.then525.i.exit.sink.split.i_crit_edge, label %do.end531.i

if.then525.i.exit.sink.split.i_crit_edge:         ; preds = %if.then525.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %exit.sink.split.i

do.end531.i:                                      ; preds = %if.then525.i
  call void @__sanitizer_cov_trace_pc() #7
  %520 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load2_noabort(i32 %520)
  %521 = load i16, ptr %arrayidx, align 4
  %conv534.i = zext i16 %521 to i32
  %call535.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.30, ptr noundef nonnull @.str.9, i32 noundef %conv534.i) #8
  br label %exit.sink.split.i

do.end559.i:                                      ; preds = %for.cond541.preheader.i
  call void @__sanitizer_cov_trace_pc() #7
  %522 = ptrtoint ptr %arrayidx548.i to i32
  call void @__asan_load1_noabort(i32 %522)
  %523 = load i8, ptr %arrayidx548.i, align 1
  %conv564.i = zext i8 %523 to i32
  %524 = ptrtoint ptr %arrayidx567.i to i32
  call void @__asan_load1_noabort(i32 %524)
  %525 = load i8, ptr %arrayidx567.i, align 1
  %conv568.i = zext i8 %525 to i32
  %call569.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.40, ptr noundef nonnull @.str.9, i32 noundef %conv564.i, i32 noundef %conv568.i) #8
  br label %for.inc571.i

for.inc571.i:                                     ; preds = %do.end559.i, %for.cond541.preheader.i.for.inc571.i_crit_edge
  call void @__sanitizer_cov_trace_const_cmp2(i16 2, i16 %345)
  %exitcond989.not.i = icmp ult i16 %345, 2
  br i1 %exitcond989.not.i, label %for.inc571.i.if.end574.i_crit_edge, label %for.body545.i.1

for.inc571.i.if.end574.i_crit_edge:               ; preds = %for.inc571.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end574.i

for.body545.i.1:                                  ; preds = %for.inc571.i
  %526 = ptrtoint ptr %arrayidx548.i.1 to i32
  call void @__asan_load1_noabort(i32 %526)
  %527 = load i8, ptr %arrayidx548.i.1, align 1
  %528 = ptrtoint ptr %buf549.i to i32
  call void @__asan_load4_noabort(i32 %528)
  %529 = load ptr, ptr %buf549.i, align 4
  %add552.i.1 = or i32 %mul551.i, 1
  %arrayidx553.i.1 = getelementptr i8, ptr %529, i32 %add552.i.1
  %530 = ptrtoint ptr %arrayidx553.i.1 to i32
  call void @__asan_store1_noabort(i32 %530)
  store i8 %527, ptr %arrayidx553.i.1, align 1
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @dvb_usb_mxl111sf_debug to i32))
  %531 = load i32, ptr @dvb_usb_mxl111sf_debug, align 4
  %and554.i.1 = and i32 %531, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and554.i.1)
  %tobool555.not.i.1 = icmp eq i32 %and554.i.1, 0
  br i1 %tobool555.not.i.1, label %for.body545.i.1.for.inc571.i.1_crit_edge, label %do.end559.i.1

for.body545.i.1.for.inc571.i.1_crit_edge:         ; preds = %for.body545.i.1
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc571.i.1

do.end559.i.1:                                    ; preds = %for.body545.i.1
  call void @__sanitizer_cov_trace_pc() #7
  %532 = ptrtoint ptr %arrayidx548.i.1 to i32
  call void @__asan_load1_noabort(i32 %532)
  %533 = load i8, ptr %arrayidx548.i.1, align 1
  %conv564.i.1 = zext i8 %533 to i32
  %534 = ptrtoint ptr %arrayidx567.i.1 to i32
  call void @__asan_load1_noabort(i32 %534)
  %535 = load i8, ptr %arrayidx567.i.1, align 1
  %conv568.i.1 = zext i8 %535 to i32
  %call569.i.1 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.40, ptr noundef nonnull @.str.9, i32 noundef %conv564.i.1, i32 noundef %conv568.i.1) #8
  br label %for.inc571.i.1

for.inc571.i.1:                                   ; preds = %do.end559.i.1, %for.body545.i.1.for.inc571.i.1_crit_edge
  call void @__sanitizer_cov_trace_const_cmp2(i16 2, i16 %512)
  %exitcond989.not.i.1 = icmp eq i16 %512, 2
  br i1 %exitcond989.not.i.1, label %for.inc571.i.1.if.end574.i_crit_edge, label %for.body545.i.2

for.inc571.i.1.if.end574.i_crit_edge:             ; preds = %for.inc571.i.1
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end574.i

for.body545.i.2:                                  ; preds = %for.inc571.i.1
  %536 = ptrtoint ptr %arrayidx548.i.2 to i32
  call void @__asan_load1_noabort(i32 %536)
  %537 = load i8, ptr %arrayidx548.i.2, align 1
  %538 = ptrtoint ptr %buf549.i to i32
  call void @__asan_load4_noabort(i32 %538)
  %539 = load ptr, ptr %buf549.i, align 4
  %add552.i.2 = or i32 %mul551.i, 2
  %arrayidx553.i.2 = getelementptr i8, ptr %539, i32 %add552.i.2
  %540 = ptrtoint ptr %arrayidx553.i.2 to i32
  call void @__asan_store1_noabort(i32 %540)
  store i8 %537, ptr %arrayidx553.i.2, align 1
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @dvb_usb_mxl111sf_debug to i32))
  %541 = load i32, ptr @dvb_usb_mxl111sf_debug, align 4
  %and554.i.2 = and i32 %541, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and554.i.2)
  %tobool555.not.i.2 = icmp eq i32 %and554.i.2, 0
  br i1 %tobool555.not.i.2, label %for.body545.i.2.for.inc571.i.2_crit_edge, label %do.end559.i.2

for.body545.i.2.for.inc571.i.2_crit_edge:         ; preds = %for.body545.i.2
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc571.i.2

do.end559.i.2:                                    ; preds = %for.body545.i.2
  call void @__sanitizer_cov_trace_pc() #7
  %542 = ptrtoint ptr %arrayidx548.i.2 to i32
  call void @__asan_load1_noabort(i32 %542)
  %543 = load i8, ptr %arrayidx548.i.2, align 1
  %conv564.i.2 = zext i8 %543 to i32
  %544 = ptrtoint ptr %arrayidx567.i.2 to i32
  call void @__asan_load1_noabort(i32 %544)
  %545 = load i8, ptr %arrayidx567.i.2, align 1
  %conv568.i.2 = zext i8 %545 to i32
  %call569.i.2 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.40, ptr noundef nonnull @.str.9, i32 noundef %conv564.i.2, i32 noundef %conv568.i.2) #8
  br label %for.inc571.i.2

for.inc571.i.2:                                   ; preds = %do.end559.i.2, %for.body545.i.2.for.inc571.i.2_crit_edge
  call void @__sanitizer_cov_trace_const_cmp2(i16 3, i16 %512)
  %exitcond989.not.i.2 = icmp eq i16 %512, 3
  br i1 %exitcond989.not.i.2, label %for.inc571.i.2.if.end574.i_crit_edge, label %for.body545.i.3

for.inc571.i.2.if.end574.i_crit_edge:             ; preds = %for.inc571.i.2
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end574.i

for.body545.i.3:                                  ; preds = %for.inc571.i.2
  %546 = ptrtoint ptr %arrayidx548.i.3 to i32
  call void @__asan_load1_noabort(i32 %546)
  %547 = load i8, ptr %arrayidx548.i.3, align 1
  %548 = ptrtoint ptr %buf549.i to i32
  call void @__asan_load4_noabort(i32 %548)
  %549 = load ptr, ptr %buf549.i, align 4
  %add552.i.3 = or i32 %mul551.i, 3
  %arrayidx553.i.3 = getelementptr i8, ptr %549, i32 %add552.i.3
  %550 = ptrtoint ptr %arrayidx553.i.3 to i32
  call void @__asan_store1_noabort(i32 %550)
  store i8 %547, ptr %arrayidx553.i.3, align 1
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @dvb_usb_mxl111sf_debug to i32))
  %551 = load i32, ptr @dvb_usb_mxl111sf_debug, align 4
  %and554.i.3 = and i32 %551, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and554.i.3)
  %tobool555.not.i.3 = icmp eq i32 %and554.i.3, 0
  br i1 %tobool555.not.i.3, label %for.body545.i.3.for.inc571.i.3_crit_edge, label %do.end559.i.3

for.body545.i.3.for.inc571.i.3_crit_edge:         ; preds = %for.body545.i.3
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc571.i.3

do.end559.i.3:                                    ; preds = %for.body545.i.3
  call void @__sanitizer_cov_trace_pc() #7
  %552 = ptrtoint ptr %arrayidx548.i.3 to i32
  call void @__asan_load1_noabort(i32 %552)
  %553 = load i8, ptr %arrayidx548.i.3, align 1
  %conv564.i.3 = zext i8 %553 to i32
  %554 = ptrtoint ptr %arrayidx567.i.3 to i32
  call void @__asan_load1_noabort(i32 %554)
  %555 = load i8, ptr %arrayidx567.i.3, align 1
  %conv568.i.3 = zext i8 %555 to i32
  %call569.i.3 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.40, ptr noundef nonnull @.str.9, i32 noundef %conv564.i.3, i32 noundef %conv568.i.3) #8
  br label %for.inc571.i.3

for.inc571.i.3:                                   ; preds = %do.end559.i.3, %for.body545.i.3.for.inc571.i.3_crit_edge
  call void @__sanitizer_cov_trace_const_cmp2(i16 4, i16 %512)
  %exitcond989.not.i.3 = icmp eq i16 %512, 4
  br i1 %exitcond989.not.i.3, label %for.inc571.i.3.if.end574.i_crit_edge, label %for.body545.i.4

for.inc571.i.3.if.end574.i_crit_edge:             ; preds = %for.inc571.i.3
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end574.i

for.body545.i.4:                                  ; preds = %for.inc571.i.3
  %556 = ptrtoint ptr %arrayidx548.i.4 to i32
  call void @__asan_load1_noabort(i32 %556)
  %557 = load i8, ptr %arrayidx548.i.4, align 1
  %558 = ptrtoint ptr %buf549.i to i32
  call void @__asan_load4_noabort(i32 %558)
  %559 = load ptr, ptr %buf549.i, align 4
  %add552.i.4 = or i32 %mul551.i, 4
  %arrayidx553.i.4 = getelementptr i8, ptr %559, i32 %add552.i.4
  %560 = ptrtoint ptr %arrayidx553.i.4 to i32
  call void @__asan_store1_noabort(i32 %560)
  store i8 %557, ptr %arrayidx553.i.4, align 1
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @dvb_usb_mxl111sf_debug to i32))
  %561 = load i32, ptr @dvb_usb_mxl111sf_debug, align 4
  %and554.i.4 = and i32 %561, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and554.i.4)
  %tobool555.not.i.4 = icmp eq i32 %and554.i.4, 0
  br i1 %tobool555.not.i.4, label %for.body545.i.4.for.inc571.i.4_crit_edge, label %do.end559.i.4

for.body545.i.4.for.inc571.i.4_crit_edge:         ; preds = %for.body545.i.4
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc571.i.4

do.end559.i.4:                                    ; preds = %for.body545.i.4
  call void @__sanitizer_cov_trace_pc() #7
  %562 = ptrtoint ptr %arrayidx548.i.4 to i32
  call void @__asan_load1_noabort(i32 %562)
  %563 = load i8, ptr %arrayidx548.i.4, align 1
  %conv564.i.4 = zext i8 %563 to i32
  %564 = ptrtoint ptr %arrayidx567.i.4 to i32
  call void @__asan_load1_noabort(i32 %564)
  %565 = load i8, ptr %arrayidx567.i.4, align 1
  %conv568.i.4 = zext i8 %565 to i32
  %call569.i.4 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.40, ptr noundef nonnull @.str.9, i32 noundef %conv564.i.4, i32 noundef %conv568.i.4) #8
  br label %for.inc571.i.4

for.inc571.i.4:                                   ; preds = %do.end559.i.4, %for.body545.i.4.for.inc571.i.4_crit_edge
  call void @__sanitizer_cov_trace_const_cmp2(i16 5, i16 %512)
  %exitcond989.not.i.4 = icmp eq i16 %512, 5
  br i1 %exitcond989.not.i.4, label %for.inc571.i.4.if.end574.i_crit_edge, label %for.body545.i.5

for.inc571.i.4.if.end574.i_crit_edge:             ; preds = %for.inc571.i.4
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end574.i

for.body545.i.5:                                  ; preds = %for.inc571.i.4
  %566 = ptrtoint ptr %arrayidx548.i.5 to i32
  call void @__asan_load1_noabort(i32 %566)
  %567 = load i8, ptr %arrayidx548.i.5, align 1
  %568 = ptrtoint ptr %buf549.i to i32
  call void @__asan_load4_noabort(i32 %568)
  %569 = load ptr, ptr %buf549.i, align 4
  %add552.i.5 = or i32 %mul551.i, 5
  %arrayidx553.i.5 = getelementptr i8, ptr %569, i32 %add552.i.5
  %570 = ptrtoint ptr %arrayidx553.i.5 to i32
  call void @__asan_store1_noabort(i32 %570)
  store i8 %567, ptr %arrayidx553.i.5, align 1
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @dvb_usb_mxl111sf_debug to i32))
  %571 = load i32, ptr @dvb_usb_mxl111sf_debug, align 4
  %and554.i.5 = and i32 %571, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and554.i.5)
  %tobool555.not.i.5 = icmp eq i32 %and554.i.5, 0
  br i1 %tobool555.not.i.5, label %for.body545.i.5.for.inc571.i.5_crit_edge, label %do.end559.i.5

for.body545.i.5.for.inc571.i.5_crit_edge:         ; preds = %for.body545.i.5
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc571.i.5

do.end559.i.5:                                    ; preds = %for.body545.i.5
  call void @__sanitizer_cov_trace_pc() #7
  %572 = ptrtoint ptr %arrayidx548.i.5 to i32
  call void @__asan_load1_noabort(i32 %572)
  %573 = load i8, ptr %arrayidx548.i.5, align 1
  %conv564.i.5 = zext i8 %573 to i32
  %574 = ptrtoint ptr %arrayidx567.i.5 to i32
  call void @__asan_load1_noabort(i32 %574)
  %575 = load i8, ptr %arrayidx567.i.5, align 1
  %conv568.i.5 = zext i8 %575 to i32
  %call569.i.5 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.40, ptr noundef nonnull @.str.9, i32 noundef %conv564.i.5, i32 noundef %conv568.i.5) #8
  br label %for.inc571.i.5

for.inc571.i.5:                                   ; preds = %do.end559.i.5, %for.body545.i.5.for.inc571.i.5_crit_edge
  call void @__sanitizer_cov_trace_const_cmp2(i16 6, i16 %512)
  %exitcond989.not.i.5 = icmp eq i16 %512, 6
  br i1 %exitcond989.not.i.5, label %for.inc571.i.5.if.end574.i_crit_edge, label %for.body545.i.6

for.inc571.i.5.if.end574.i_crit_edge:             ; preds = %for.inc571.i.5
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end574.i

for.body545.i.6:                                  ; preds = %for.inc571.i.5
  %576 = ptrtoint ptr %arrayidx548.i.6 to i32
  call void @__asan_load1_noabort(i32 %576)
  %577 = load i8, ptr %arrayidx548.i.6, align 1
  %578 = ptrtoint ptr %buf549.i to i32
  call void @__asan_load4_noabort(i32 %578)
  %579 = load ptr, ptr %buf549.i, align 4
  %add552.i.6 = or i32 %mul551.i, 6
  %arrayidx553.i.6 = getelementptr i8, ptr %579, i32 %add552.i.6
  %580 = ptrtoint ptr %arrayidx553.i.6 to i32
  call void @__asan_store1_noabort(i32 %580)
  store i8 %577, ptr %arrayidx553.i.6, align 1
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @dvb_usb_mxl111sf_debug to i32))
  %581 = load i32, ptr @dvb_usb_mxl111sf_debug, align 4
  %and554.i.6 = and i32 %581, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and554.i.6)
  %tobool555.not.i.6 = icmp eq i32 %and554.i.6, 0
  br i1 %tobool555.not.i.6, label %for.body545.i.6.if.end574.i_crit_edge, label %do.end559.i.6

for.body545.i.6.if.end574.i_crit_edge:            ; preds = %for.body545.i.6
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end574.i

do.end559.i.6:                                    ; preds = %for.body545.i.6
  call void @__sanitizer_cov_trace_pc() #7
  %582 = ptrtoint ptr %arrayidx548.i.6 to i32
  call void @__asan_load1_noabort(i32 %582)
  %583 = load i8, ptr %arrayidx548.i.6, align 1
  %conv564.i.6 = zext i8 %583 to i32
  %584 = ptrtoint ptr %arrayidx567.i.6 to i32
  call void @__asan_load1_noabort(i32 %584)
  %585 = load i8, ptr %arrayidx567.i.6, align 1
  %conv568.i.6 = zext i8 %585 to i32
  %call569.i.6 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.40, ptr noundef nonnull @.str.9, i32 noundef %conv564.i.6, i32 noundef %conv568.i.6) #8
  br label %if.end574.i

if.end574.i:                                      ; preds = %do.end559.i.6, %for.body545.i.6.if.end574.i_crit_edge, %for.inc571.i.5.if.end574.i_crit_edge, %for.inc571.i.4.if.end574.i_crit_edge, %for.inc571.i.3.if.end574.i_crit_edge, %for.inc571.i.2.if.end574.i_crit_edge, %for.inc571.i.1.if.end574.i_crit_edge, %for.inc571.i.if.end574.i_crit_edge, %for.end488.i.if.end574.i_crit_edge
  %586 = ptrtoint ptr %buf.i to i32
  call void @__asan_store1_noabort(i32 %586)
  store i8 -103, ptr %buf.i, align 1
  %587 = ptrtoint ptr %6 to i32
  call void @__asan_store1_noabort(i32 %587)
  store i8 0, ptr %6, align 1
  %588 = ptrtoint ptr %7 to i32
  call void @__asan_store1_noabort(i32 %588)
  store i8 0, ptr %7, align 1
  %589 = ptrtoint ptr %8 to i32
  call void @__asan_store1_noabort(i32 %589)
  store i8 23, ptr %8, align 1
  %590 = ptrtoint ptr %9 to i32
  call void @__asan_store1_noabort(i32 %590)
  store i8 3, ptr %9, align 1
  %591 = ptrtoint ptr %10 to i32
  call void @__asan_store1_noabort(i32 %591)
  store i8 -2, ptr %10, align 1
  %call.i905.i = call i32 @mxl111sf_ctrl_msg(ptr noundef %3, i8 noundef zeroext -103, ptr noundef %6, i32 noundef 25, ptr noundef null, i32 noundef 0) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i905.i)
  %cmp.i906.i = icmp slt i32 %call.i905.i, 0
  br i1 %cmp.i906.i, label %land.lhs.true.i909.i, label %if.end574.i.exit.sink.split.i_crit_edge

if.end574.i.exit.sink.split.i_crit_edge:          ; preds = %if.end574.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %exit.sink.split.i

land.lhs.true.i909.i:                             ; preds = %if.end574.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @dvb_usb_mxl111sf_debug to i32))
  %592 = load i32, ptr @dvb_usb_mxl111sf_debug, align 4
  %and.i907.i = and i32 %592, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i907.i)
  %tobool2.not.i908.i = icmp eq i32 %and.i907.i, 0
  br i1 %tobool2.not.i908.i, label %land.lhs.true.i909.i.exit.sink.split.i_crit_edge, label %do.end.i911.i

land.lhs.true.i909.i.exit.sink.split.i_crit_edge: ; preds = %land.lhs.true.i909.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %exit.sink.split.i

do.end.i911.i:                                    ; preds = %land.lhs.true.i909.i
  call void @__sanitizer_cov_trace_pc() #7
  %call3.i910.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.51, i32 noundef %call.i905.i, i32 noundef 312) #8
  br label %exit.sink.split.i

exit.sink.split.i:                                ; preds = %do.end.i911.i, %land.lhs.true.i909.i.exit.sink.split.i_crit_edge, %if.end574.i.exit.sink.split.i_crit_edge, %do.end531.i, %if.then525.i.exit.sink.split.i_crit_edge, %do.end345.i, %if.then339.i.exit.sink.split.i_crit_edge, %do.end279.i, %if.then273.i.exit.sink.split.i_crit_edge, %do.end215.i, %if.then209.i.exit.sink.split.i_crit_edge, %do.end140.i, %if.then134.i.exit.sink.split.i_crit_edge, %do.end76.i, %if.then70.i.exit.sink.split.i_crit_edge
  %.sink.i = phi i8 [ 78, %do.end76.i ], [ 78, %if.then70.i.exit.sink.split.i_crit_edge ], [ 78, %do.end140.i ], [ 78, %if.then134.i.exit.sink.split.i_crit_edge ], [ 78, %do.end215.i ], [ 78, %if.then209.i.exit.sink.split.i_crit_edge ], [ -57, %do.end279.i ], [ -57, %if.then273.i.exit.sink.split.i_crit_edge ], [ -57, %do.end345.i ], [ -57, %if.then339.i.exit.sink.split.i_crit_edge ], [ -57, %do.end531.i ], [ -57, %if.then525.i.exit.sink.split.i_crit_edge ], [ -57, %if.end574.i.exit.sink.split.i_crit_edge ], [ -57, %land.lhs.true.i909.i.exit.sink.split.i_crit_edge ], [ -57, %do.end.i911.i ]
  %ret.3.ph.i = phi i32 [ -5, %do.end76.i ], [ -5, %if.then70.i.exit.sink.split.i_crit_edge ], [ -5, %do.end140.i ], [ -5, %if.then134.i.exit.sink.split.i_crit_edge ], [ -5, %do.end215.i ], [ -5, %if.then209.i.exit.sink.split.i_crit_edge ], [ -5, %do.end279.i ], [ -5, %if.then273.i.exit.sink.split.i_crit_edge ], [ -5, %do.end345.i ], [ -5, %if.then339.i.exit.sink.split.i_crit_edge ], [ -5, %do.end531.i ], [ -5, %if.then525.i.exit.sink.split.i_crit_edge ], [ %call.i905.i, %if.end574.i.exit.sink.split.i_crit_edge ], [ %call.i905.i, %land.lhs.true.i909.i.exit.sink.split.i_crit_edge ], [ %call.i905.i, %do.end.i911.i ]
  %593 = ptrtoint ptr %7 to i32
  call void @__asan_store1_noabort(i32 %593)
  store i8 0, ptr %7, align 1
  %594 = ptrtoint ptr %8 to i32
  call void @__asan_store1_noabort(i32 %594)
  store i8 %.sink.i, ptr %8, align 1
  %595 = ptrtoint ptr %9 to i32
  call void @__asan_store1_noabort(i32 %595)
  store i8 3, ptr %9, align 1
  br label %exit.i

exit.i:                                           ; preds = %exit.sink.split.i, %land.lhs.true234.i.exit.i_crit_edge, %if.end229.i.exit.i_crit_edge
  %ret.3.i = phi i32 [ %ret.2.i, %land.lhs.true234.i.exit.i_crit_edge ], [ %ret.2.i, %if.end229.i.exit.i_crit_edge ], [ %ret.3.ph.i, %exit.sink.split.i ]
  %596 = ptrtoint ptr %buf.i to i32
  call void @__asan_store1_noabort(i32 %596)
  store i8 -103, ptr %buf.i, align 1
  %597 = ptrtoint ptr %6 to i32
  call void @__asan_store1_noabort(i32 %597)
  store i8 0, ptr %6, align 1
  %598 = ptrtoint ptr %10 to i32
  call void @__asan_store1_noabort(i32 %598)
  store i8 -2, ptr %10, align 1
  %call.i915.i = call i32 @mxl111sf_ctrl_msg(ptr noundef %3, i8 noundef zeroext -103, ptr noundef %6, i32 noundef 25, ptr noundef null, i32 noundef 0) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i915.i)
  %cmp.i916.i = icmp slt i32 %call.i915.i, 0
  br i1 %cmp.i916.i, label %land.lhs.true.i919.i, label %exit.i.mxl111sf_i2c_send_data.exit923.i_crit_edge

exit.i.mxl111sf_i2c_send_data.exit923.i_crit_edge: ; preds = %exit.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %mxl111sf_i2c_send_data.exit923.i

land.lhs.true.i919.i:                             ; preds = %exit.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @dvb_usb_mxl111sf_debug to i32))
  %599 = load i32, ptr @dvb_usb_mxl111sf_debug, align 4
  %and.i917.i = and i32 %599, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i917.i)
  %tobool2.not.i918.i = icmp eq i32 %and.i917.i, 0
  br i1 %tobool2.not.i918.i, label %land.lhs.true.i919.i.mxl111sf_i2c_send_data.exit923.i_crit_edge, label %do.end.i921.i

land.lhs.true.i919.i.mxl111sf_i2c_send_data.exit923.i_crit_edge: ; preds = %land.lhs.true.i919.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %mxl111sf_i2c_send_data.exit923.i

do.end.i921.i:                                    ; preds = %land.lhs.true.i919.i
  call void @__sanitizer_cov_trace_pc() #7
  %call3.i920.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.51, i32 noundef %call.i915.i, i32 noundef 312) #8
  br label %mxl111sf_i2c_send_data.exit923.i

mxl111sf_i2c_send_data.exit923.i:                 ; preds = %do.end.i921.i, %land.lhs.true.i919.i.mxl111sf_i2c_send_data.exit923.i_crit_edge, %exit.i.mxl111sf_i2c_send_data.exit923.i_crit_edge
  %600 = ptrtoint ptr %7 to i32
  call void @__asan_store1_noabort(i32 %600)
  store i8 0, ptr %7, align 1
  %601 = ptrtoint ptr %8 to i32
  call void @__asan_store1_noabort(i32 %601)
  store i8 -33, ptr %8, align 1
  %602 = ptrtoint ptr %9 to i32
  call void @__asan_store1_noabort(i32 %602)
  store i8 3, ptr %9, align 1
  %603 = ptrtoint ptr %10 to i32
  call void @__asan_store1_noabort(i32 %603)
  store i8 48, ptr %10, align 1
  %604 = ptrtoint ptr %11 to i32
  call void @__asan_store1_noabort(i32 %604)
  store i8 0, ptr %11, align 1
  %605 = ptrtoint ptr %12 to i32
  call void @__asan_store1_noabort(i32 %605)
  store i8 0, ptr %12, align 1
  %606 = ptrtoint ptr %13 to i32
  call void @__asan_store1_noabort(i32 %606)
  store i8 -2, ptr %13, align 1
  %607 = ptrtoint ptr %buf.i to i32
  call void @__asan_load1_noabort(i32 %607)
  %608 = load i8, ptr %buf.i, align 1
  %call.i925.i = call i32 @mxl111sf_ctrl_msg(ptr noundef %3, i8 noundef zeroext %608, ptr noundef %6, i32 noundef 25, ptr noundef null, i32 noundef 0) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i925.i)
  %cmp.i926.i = icmp slt i32 %call.i925.i, 0
  br i1 %cmp.i926.i, label %land.lhs.true.i929.i, label %mxl111sf_i2c_send_data.exit923.i.mxl111sf_i2c_send_data.exit933.i_crit_edge

mxl111sf_i2c_send_data.exit923.i.mxl111sf_i2c_send_data.exit933.i_crit_edge: ; preds = %mxl111sf_i2c_send_data.exit923.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %mxl111sf_i2c_send_data.exit933.i

land.lhs.true.i929.i:                             ; preds = %mxl111sf_i2c_send_data.exit923.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @dvb_usb_mxl111sf_debug to i32))
  %609 = load i32, ptr @dvb_usb_mxl111sf_debug, align 4
  %and.i927.i = and i32 %609, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i927.i)
  %tobool2.not.i928.i = icmp eq i32 %and.i927.i, 0
  br i1 %tobool2.not.i928.i, label %land.lhs.true.i929.i.mxl111sf_i2c_send_data.exit933.i_crit_edge, label %do.end.i931.i

land.lhs.true.i929.i.mxl111sf_i2c_send_data.exit933.i_crit_edge: ; preds = %land.lhs.true.i929.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %mxl111sf_i2c_send_data.exit933.i

do.end.i931.i:                                    ; preds = %land.lhs.true.i929.i
  call void @__sanitizer_cov_trace_pc() #7
  %call3.i930.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.51, i32 noundef %call.i925.i, i32 noundef 312) #8
  br label %mxl111sf_i2c_send_data.exit933.i

mxl111sf_i2c_send_data.exit933.i:                 ; preds = %do.end.i931.i, %land.lhs.true.i929.i.mxl111sf_i2c_send_data.exit933.i_crit_edge, %mxl111sf_i2c_send_data.exit923.i.mxl111sf_i2c_send_data.exit933.i_crit_edge
  %610 = ptrtoint ptr %7 to i32
  call void @__asan_store1_noabort(i32 %610)
  store i8 48, ptr %7, align 1
  %611 = ptrtoint ptr %8 to i32
  call void @__asan_store1_noabort(i32 %611)
  store i8 -127, ptr %8, align 1
  %612 = ptrtoint ptr %9 to i32
  call void @__asan_store1_noabort(i32 %612)
  store i8 0, ptr %9, align 1
  %613 = ptrtoint ptr %10 to i32
  call void @__asan_store1_noabort(i32 %613)
  store i8 48, ptr %10, align 1
  %614 = ptrtoint ptr %11 to i32
  call void @__asan_store1_noabort(i32 %614)
  store i8 0, ptr %11, align 1
  %615 = ptrtoint ptr %12 to i32
  call void @__asan_store1_noabort(i32 %615)
  store i8 0, ptr %12, align 1
  %616 = ptrtoint ptr %13 to i32
  call void @__asan_store1_noabort(i32 %616)
  store i8 48, ptr %13, align 1
  %617 = ptrtoint ptr %14 to i32
  call void @__asan_store1_noabort(i32 %617)
  store i8 0, ptr %14, align 1
  %618 = ptrtoint ptr %15 to i32
  call void @__asan_store1_noabort(i32 %618)
  store i8 0, ptr %15, align 1
  %619 = ptrtoint ptr %16 to i32
  call void @__asan_store1_noabort(i32 %619)
  store i8 -2, ptr %16, align 1
  %620 = ptrtoint ptr %buf.i to i32
  call void @__asan_load1_noabort(i32 %620)
  %621 = load i8, ptr %buf.i, align 1
  %call.i935.i = call i32 @mxl111sf_ctrl_msg(ptr noundef %3, i8 noundef zeroext %621, ptr noundef %6, i32 noundef 25, ptr noundef null, i32 noundef 0) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i935.i)
  %cmp.i936.i = icmp slt i32 %call.i935.i, 0
  br i1 %cmp.i936.i, label %land.lhs.true.i939.i, label %mxl111sf_i2c_send_data.exit933.i.cond.end_crit_edge

mxl111sf_i2c_send_data.exit933.i.cond.end_crit_edge: ; preds = %mxl111sf_i2c_send_data.exit933.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.end

land.lhs.true.i939.i:                             ; preds = %mxl111sf_i2c_send_data.exit933.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @dvb_usb_mxl111sf_debug to i32))
  %622 = load i32, ptr @dvb_usb_mxl111sf_debug, align 4
  %and.i937.i = and i32 %622, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i937.i)
  %tobool2.not.i938.i = icmp eq i32 %and.i937.i, 0
  br i1 %tobool2.not.i938.i, label %land.lhs.true.i939.i.cond.end_crit_edge, label %do.end.i941.i

land.lhs.true.i939.i.cond.end_crit_edge:          ; preds = %land.lhs.true.i939.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.end

do.end.i941.i:                                    ; preds = %land.lhs.true.i939.i
  call void @__sanitizer_cov_trace_pc() #7
  %call3.i940.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.51, i32 noundef %call.i935.i, i32 noundef 312) #8
  br label %cond.end

cond.false:                                       ; preds = %for.body
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @dvb_usb_mxl111sf_debug to i32))
  %623 = load i32, ptr @dvb_usb_mxl111sf_debug, align 4
  %and.i73 = and i32 %623, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i73)
  %tobool.not.i74 = icmp eq i32 %and.i73, 0
  br i1 %tobool.not.i74, label %cond.false.if.end.i78_crit_edge, label %do.end.i76

cond.false.if.end.i78_crit_edge:                  ; preds = %cond.false
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end.i78

do.end.i76:                                       ; preds = %cond.false
  call void @__sanitizer_cov_trace_pc() #7
  %call.i75 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.52, ptr noundef nonnull @.str.67) #8
  br label %if.end.i78

if.end.i78:                                       ; preds = %do.end.i76, %cond.false.if.end.i78_crit_edge
  %flags.i77 = getelementptr %struct.i2c_msg, ptr %msg, i32 %i.0161, i32 1
  %624 = ptrtoint ptr %flags.i77 to i32
  call void @__asan_load2_noabort(i32 %624)
  %625 = load i16, ptr %flags.i77, align 2
  %626 = and i16 %625, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %626)
  %tobool2.not.i = icmp eq i16 %626, 0
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @dvb_usb_mxl111sf_debug to i32))
  %627 = load i32, ptr @dvb_usb_mxl111sf_debug, align 4
  %and.i98 = and i32 %627, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i98)
  %tobool.not.i99 = icmp eq i32 %and.i98, 0
  br i1 %tobool.not.i99, label %if.end.i78.if.end.i102_crit_edge, label %do.end.i101

if.end.i78.if.end.i102_crit_edge:                 ; preds = %if.end.i78
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end.i102

do.end.i101:                                      ; preds = %if.end.i78
  call void @__sanitizer_cov_trace_pc() #7
  %call.i100 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.52, ptr noundef nonnull @.str.82) #8
  br label %if.end.i102

if.end.i102:                                      ; preds = %do.end.i101, %if.end.i78.if.end.i102_crit_edge
  %call1.i = call i32 @mxl111sf_write_reg(ptr noundef %3, i8 noundef zeroext 26, i8 noundef zeroext 30) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %cmp.i = icmp slt i32 %call1.i, 0
  br i1 %cmp.i, label %land.lhs.true.i103, label %if.end15.critedge.i

land.lhs.true.i103:                               ; preds = %if.end.i102
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @dvb_usb_mxl111sf_debug to i32))
  %628 = load i32, ptr @dvb_usb_mxl111sf_debug, align 4
  %and3.i = and i32 %628, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and3.i)
  %tobool4.not.i = icmp eq i32 %and3.i, 0
  br i1 %tobool4.not.i, label %land.lhs.true.i103.mxl111sf_i2c_start.exit_crit_edge, label %do.end8.i

land.lhs.true.i103.mxl111sf_i2c_start.exit_crit_edge: ; preds = %land.lhs.true.i103
  call void @__sanitizer_cov_trace_pc() #7
  br label %mxl111sf_i2c_start.exit

do.end8.i:                                        ; preds = %land.lhs.true.i103
  call void @__sanitizer_cov_trace_pc() #7
  %call10.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.82, i32 noundef %call1.i, i32 noundef 132) #8
  br label %mxl111sf_i2c_start.exit

if.end15.critedge.i:                              ; preds = %if.end.i102
  %call16.i = call i32 @mxl111sf_write_reg(ptr noundef %3, i8 noundef zeroext 26, i8 noundef zeroext 22) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call16.i)
  %cmp18.i = icmp slt i32 %call16.i, 0
  br i1 %cmp18.i, label %land.lhs.true21.i, label %if.end34.critedge.i

land.lhs.true21.i:                                ; preds = %if.end15.critedge.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @dvb_usb_mxl111sf_debug to i32))
  %629 = load i32, ptr @dvb_usb_mxl111sf_debug, align 4
  %and22.i = and i32 %629, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and22.i)
  %tobool23.not.i = icmp eq i32 %and22.i, 0
  br i1 %tobool23.not.i, label %land.lhs.true21.i.mxl111sf_i2c_start.exit_crit_edge, label %do.end27.i

land.lhs.true21.i.mxl111sf_i2c_start.exit_crit_edge: ; preds = %land.lhs.true21.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %mxl111sf_i2c_start.exit

do.end27.i:                                       ; preds = %land.lhs.true21.i
  call void @__sanitizer_cov_trace_pc() #7
  %call29.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.82, i32 noundef %call16.i, i32 noundef 137) #8
  br label %mxl111sf_i2c_start.exit

if.end34.critedge.i:                              ; preds = %if.end15.critedge.i
  %call35.i104 = call i32 @mxl111sf_write_reg(ptr noundef %3, i8 noundef zeroext 26, i8 noundef zeroext 18) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call35.i104)
  %cmp37.i = icmp slt i32 %call35.i104, 0
  br i1 %cmp37.i, label %land.lhs.true40.i, label %if.end34.critedge.i.mxl111sf_i2c_start.exit_crit_edge

if.end34.critedge.i.mxl111sf_i2c_start.exit_crit_edge: ; preds = %if.end34.critedge.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %mxl111sf_i2c_start.exit

land.lhs.true40.i:                                ; preds = %if.end34.critedge.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @dvb_usb_mxl111sf_debug to i32))
  %630 = load i32, ptr @dvb_usb_mxl111sf_debug, align 4
  %and41.i105 = and i32 %630, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and41.i105)
  %tobool42.not.i106 = icmp eq i32 %and41.i105, 0
  br i1 %tobool42.not.i106, label %land.lhs.true40.i.mxl111sf_i2c_start.exit_crit_edge, label %do.end46.i107

land.lhs.true40.i.mxl111sf_i2c_start.exit_crit_edge: ; preds = %land.lhs.true40.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %mxl111sf_i2c_start.exit

do.end46.i107:                                    ; preds = %land.lhs.true40.i
  call void @__sanitizer_cov_trace_pc() #7
  %call48.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.82, i32 noundef %call35.i104, i32 noundef 142) #8
  br label %mxl111sf_i2c_start.exit

mxl111sf_i2c_start.exit:                          ; preds = %do.end46.i107, %land.lhs.true40.i.mxl111sf_i2c_start.exit_crit_edge, %if.end34.critedge.i.mxl111sf_i2c_start.exit_crit_edge, %do.end27.i, %land.lhs.true21.i.mxl111sf_i2c_start.exit_crit_edge, %do.end8.i, %land.lhs.true.i103.mxl111sf_i2c_start.exit_crit_edge
  %ret.0.i = phi i32 [ %call1.i, %do.end8.i ], [ %call16.i, %do.end27.i ], [ %call35.i104, %do.end46.i107 ], [ %call35.i104, %land.lhs.true40.i.mxl111sf_i2c_start.exit_crit_edge ], [ %call35.i104, %if.end34.critedge.i.mxl111sf_i2c_start.exit_crit_edge ], [ %call1.i, %land.lhs.true.i103.mxl111sf_i2c_start.exit_crit_edge ], [ %call16.i, %land.lhs.true21.i.mxl111sf_i2c_start.exit_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.0.i)
  %cmp94.i = icmp slt i32 %ret.0.i, 0
  br i1 %tobool2.not.i, label %if.else.i94, label %if.then3.i

if.then3.i:                                       ; preds = %mxl111sf_i2c_start.exit
  br i1 %cmp94.i, label %land.lhs.true.i79, label %if.end19.critedge.i

land.lhs.true.i79:                                ; preds = %if.then3.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @dvb_usb_mxl111sf_debug to i32))
  %631 = load i32, ptr @dvb_usb_mxl111sf_debug, align 4
  %and7.i = and i32 %631, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and7.i)
  %tobool8.not.i = icmp eq i32 %and7.i, 0
  br i1 %tobool8.not.i, label %land.lhs.true.i79.land.lhs.true_crit_edge, label %do.end12.i

land.lhs.true.i79.land.lhs.true_crit_edge:        ; preds = %land.lhs.true.i79
  call void @__sanitizer_cov_trace_pc() #7
  br label %land.lhs.true

do.end12.i:                                       ; preds = %land.lhs.true.i79
  call void @__sanitizer_cov_trace_pc() #7
  %call14.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.67, i32 noundef %ret.0.i, i32 noundef 235) #8
  br label %land.lhs.true

if.end19.critedge.i:                              ; preds = %if.then3.i
  %632 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load2_noabort(i32 %632)
  %633 = load i16, ptr %arrayidx, align 4
  %conv20.i = trunc i16 %633 to i8
  %shl.i = shl i8 %conv20.i, 1
  %or.i = or i8 %shl.i, 1
  %call22.i = call fastcc i32 @mxl111sf_i2c_bitbang_sendbyte(ptr noundef %3, i8 noundef zeroext %or.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call22.i)
  %cmp24.i = icmp slt i32 %call22.i, 0
  br i1 %cmp24.i, label %land.lhs.true27.i, label %for.cond.preheader.i

for.cond.preheader.i:                             ; preds = %if.end19.critedge.i
  %len.i = getelementptr %struct.i2c_msg, ptr %msg, i32 %i.0161, i32 2
  %634 = ptrtoint ptr %len.i to i32
  call void @__asan_load2_noabort(i32 %634)
  %635 = load i16, ptr %len.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %635)
  %cmp43269.not.i = icmp eq i16 %635, 0
  br i1 %cmp43269.not.i, label %for.cond.preheader.i.for.end.i_crit_edge, label %for.body.lr.ph.i

for.cond.preheader.i.for.end.i_crit_edge:         ; preds = %for.cond.preheader.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end.i

for.body.lr.ph.i:                                 ; preds = %for.cond.preheader.i
  %buf.i80 = getelementptr %struct.i2c_msg, ptr %msg, i32 %i.0161, i32 3
  br label %for.body.i

land.lhs.true27.i:                                ; preds = %if.end19.critedge.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @dvb_usb_mxl111sf_debug to i32))
  %636 = load i32, ptr @dvb_usb_mxl111sf_debug, align 4
  %and28.i = and i32 %636, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and28.i)
  %tobool29.not.i = icmp eq i32 %and28.i, 0
  br i1 %tobool29.not.i, label %land.lhs.true27.i.if.then39.i_crit_edge, label %do.end33.i

land.lhs.true27.i.if.then39.i_crit_edge:          ; preds = %land.lhs.true27.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then39.i

do.end33.i:                                       ; preds = %land.lhs.true27.i
  call void @__sanitizer_cov_trace_pc() #7
  %call35.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.67, i32 noundef %call22.i, i32 noundef 240) #8
  br label %if.then39.i

if.then39.i:                                      ; preds = %do.end33.i, %land.lhs.true27.i.if.then39.i_crit_edge
  %call40.i = call fastcc i32 @mxl111sf_i2c_stop(ptr noundef %3) #5
  br label %land.lhs.true

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %i.0270.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc.i, %for.inc.i.for.body.i_crit_edge ]
  %637 = ptrtoint ptr %buf.i80 to i32
  call void @__asan_load4_noabort(i32 %637)
  %638 = load ptr, ptr %buf.i80, align 4
  %arrayidx.i = getelementptr i8, ptr %638, i32 %i.0270.i
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %data.i.i) #5
  %639 = ptrtoint ptr %data.i.i to i32
  call void @__asan_store1_noabort(i32 %639)
  store i8 0, ptr %data.i.i, align 1
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @dvb_usb_mxl111sf_debug to i32))
  %640 = load i32, ptr @dvb_usb_mxl111sf_debug, align 4
  %and.i.i81 = and i32 %640, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i81)
  %tobool.not.i.i82 = icmp eq i32 %and.i.i81, 0
  br i1 %tobool.not.i.i82, label %for.body.i.if.end.i.i86_crit_edge, label %do.end.i.i84

for.body.i.if.end.i.i86_crit_edge:                ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end.i.i86

do.end.i.i84:                                     ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #7
  %call.i.i83 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.52, ptr noundef nonnull @.str.116) #8
  br label %if.end.i.i86

if.end.i.i86:                                     ; preds = %do.end.i.i84, %for.body.i.if.end.i.i86_crit_edge
  %641 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store1_noabort(i32 %641)
  store i8 0, ptr %arrayidx.i, align 1
  %call1.i.i = call i32 @mxl111sf_write_reg(ptr noundef %3, i8 noundef zeroext 26, i8 noundef zeroext 26) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i)
  %cmp.i.i85 = icmp slt i32 %call1.i.i, 0
  br i1 %cmp.i.i85, label %land.lhs.true.i.i87, label %if.end.i.i86.for.body.i.i_crit_edge

if.end.i.i86.for.body.i.i_crit_edge:              ; preds = %if.end.i.i86
  br label %for.body.i.i

land.lhs.true.i.i87:                              ; preds = %if.end.i.i86
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @dvb_usb_mxl111sf_debug to i32))
  %642 = load i32, ptr @dvb_usb_mxl111sf_debug, align 4
  %and3.i.i = and i32 %642, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and3.i.i)
  %tobool4.not.i.i = icmp eq i32 %and3.i.i, 0
  br i1 %tobool4.not.i.i, label %land.lhs.true.i.i87.land.lhs.true50.i_crit_edge, label %do.end8.i.i

land.lhs.true.i.i87.land.lhs.true50.i_crit_edge:  ; preds = %land.lhs.true.i.i87
  call void @__sanitizer_cov_trace_pc() #7
  br label %land.lhs.true50.i

do.end8.i.i:                                      ; preds = %land.lhs.true.i.i87
  call void @__sanitizer_cov_trace_pc() #7
  %call10.i.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.116, i32 noundef %call1.i.i, i32 noundef 97) #8
  br label %land.lhs.true50.i

for.body.i.i:                                     ; preds = %for.inc.critedge.i.i.for.body.i.i_crit_edge, %if.end.i.i86.for.body.i.i_crit_edge
  %i.0118.i.i = phi i32 [ %inc.i.i88, %for.inc.critedge.i.i.for.body.i.i_crit_edge ], [ 0, %if.end.i.i86.for.body.i.i_crit_edge ]
  %byte.0117.i.i = phi i8 [ %byte.1.i.i, %for.inc.critedge.i.i.for.body.i.i_crit_edge ], [ 0, %if.end.i.i86.for.body.i.i_crit_edge ]
  %call18.i.i = call i32 @mxl111sf_write_reg(ptr noundef %3, i8 noundef zeroext 26, i8 noundef zeroext 30) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call18.i.i)
  %cmp20.i.i = icmp slt i32 %call18.i.i, 0
  br i1 %cmp20.i.i, label %land.lhs.true23.i.i, label %if.end36.critedge.i.i

land.lhs.true23.i.i:                              ; preds = %for.body.i.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @dvb_usb_mxl111sf_debug to i32))
  %643 = load i32, ptr @dvb_usb_mxl111sf_debug, align 4
  %and24.i.i = and i32 %643, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and24.i.i)
  %tobool25.not.i.i = icmp eq i32 %and24.i.i, 0
  br i1 %tobool25.not.i.i, label %land.lhs.true23.i.i.land.lhs.true50.i_crit_edge, label %do.end29.i.i

land.lhs.true23.i.i.land.lhs.true50.i_crit_edge:  ; preds = %land.lhs.true23.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %land.lhs.true50.i

do.end29.i.i:                                     ; preds = %land.lhs.true23.i.i
  call void @__sanitizer_cov_trace_pc() #7
  %call31.i.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.116, i32 noundef %call18.i.i, i32 noundef 104) #8
  br label %land.lhs.true50.i

if.end36.critedge.i.i:                            ; preds = %for.body.i.i
  %call37.i.i = call i32 @mxl111sf_read_reg(ptr noundef %3, i8 noundef zeroext 47, ptr noundef nonnull %data.i.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call37.i.i)
  %cmp39.i.i = icmp slt i32 %call37.i.i, 0
  br i1 %cmp39.i.i, label %land.lhs.true42.i.i, label %if.end55.critedge.i.i

land.lhs.true42.i.i:                              ; preds = %if.end36.critedge.i.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @dvb_usb_mxl111sf_debug to i32))
  %644 = load i32, ptr @dvb_usb_mxl111sf_debug, align 4
  %and43.i.i = and i32 %644, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and43.i.i)
  %tobool44.not.i.i = icmp eq i32 %and43.i.i, 0
  br i1 %tobool44.not.i.i, label %land.lhs.true42.i.i.land.lhs.true50.i_crit_edge, label %do.end48.i.i

land.lhs.true42.i.i.land.lhs.true50.i_crit_edge:  ; preds = %land.lhs.true42.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %land.lhs.true50.i

do.end48.i.i:                                     ; preds = %land.lhs.true42.i.i
  call void @__sanitizer_cov_trace_pc() #7
  %call50.i.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.116, i32 noundef %call37.i.i, i32 noundef 108) #8
  br label %land.lhs.true50.i

if.end55.critedge.i.i:                            ; preds = %if.end36.critedge.i.i
  %645 = ptrtoint ptr %data.i.i to i32
  call void @__asan_load1_noabort(i32 %645)
  %646 = load i8, ptr %data.i.i, align 1
  %call63.i.i = call i32 @mxl111sf_write_reg(ptr noundef %3, i8 noundef zeroext 26, i8 noundef zeroext 26) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call63.i.i)
  %cmp65.i.i = icmp slt i32 %call63.i.i, 0
  br i1 %cmp65.i.i, label %land.lhs.true68.i.i, label %for.inc.critedge.i.i

land.lhs.true68.i.i:                              ; preds = %if.end55.critedge.i.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @dvb_usb_mxl111sf_debug to i32))
  %647 = load i32, ptr @dvb_usb_mxl111sf_debug, align 4
  %and69.i.i = and i32 %647, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and69.i.i)
  %tobool70.not.i.i = icmp eq i32 %and69.i.i, 0
  br i1 %tobool70.not.i.i, label %land.lhs.true68.i.i.land.lhs.true50.i_crit_edge, label %do.end74.i.i

land.lhs.true68.i.i.land.lhs.true50.i_crit_edge:  ; preds = %land.lhs.true68.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %land.lhs.true50.i

do.end74.i.i:                                     ; preds = %land.lhs.true68.i.i
  call void @__sanitizer_cov_trace_pc() #7
  %call76.i.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.116, i32 noundef %call63.i.i, i32 noundef 116) #8
  br label %land.lhs.true50.i

for.inc.critedge.i.i:                             ; preds = %if.end55.critedge.i.i
  %648 = and i8 %646, 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %648)
  %tobool58.not.i.i = icmp eq i8 %648, 0
  %shr.i.i = lshr i32 128, %i.0118.i.i
  %649 = trunc i32 %shr.i.i to i8
  %conv61.i.i = select i1 %tobool58.not.i.i, i8 0, i8 %649
  %byte.1.i.i = or i8 %conv61.i.i, %byte.0117.i.i
  %inc.i.i88 = add nuw nsw i32 %i.0118.i.i, 1
  %exitcond.not.i.i89 = icmp eq i32 %inc.i.i88, 8
  br i1 %exitcond.not.i.i89, label %if.end64.i, label %for.inc.critedge.i.i.for.body.i.i_crit_edge

for.inc.critedge.i.i.for.body.i.i_crit_edge:      ; preds = %for.inc.critedge.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body.i.i

land.lhs.true50.i:                                ; preds = %do.end74.i.i, %land.lhs.true68.i.i.land.lhs.true50.i_crit_edge, %do.end48.i.i, %land.lhs.true42.i.i.land.lhs.true50.i_crit_edge, %do.end29.i.i, %land.lhs.true23.i.i.land.lhs.true50.i_crit_edge, %do.end8.i.i, %land.lhs.true.i.i87.land.lhs.true50.i_crit_edge
  %ret.1.i.ph.i = phi i32 [ %call63.i.i, %land.lhs.true68.i.i.land.lhs.true50.i_crit_edge ], [ %call37.i.i, %land.lhs.true42.i.i.land.lhs.true50.i_crit_edge ], [ %call18.i.i, %land.lhs.true23.i.i.land.lhs.true50.i_crit_edge ], [ %call1.i.i, %land.lhs.true.i.i87.land.lhs.true50.i_crit_edge ], [ %call63.i.i, %do.end74.i.i ], [ %call37.i.i, %do.end48.i.i ], [ %call18.i.i, %do.end29.i.i ], [ %call1.i.i, %do.end8.i.i ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %data.i.i) #5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @dvb_usb_mxl111sf_debug to i32))
  %650 = load i32, ptr @dvb_usb_mxl111sf_debug, align 4
  %and51.i = and i32 %650, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and51.i)
  %tobool52.not.i = icmp eq i32 %and51.i, 0
  br i1 %tobool52.not.i, label %land.lhs.true50.i.if.then62.i_crit_edge, label %do.end56.i

land.lhs.true50.i.if.then62.i_crit_edge:          ; preds = %land.lhs.true50.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then62.i

do.end56.i:                                       ; preds = %land.lhs.true50.i
  call void @__sanitizer_cov_trace_pc() #7
  %call58.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.67, i32 noundef %ret.1.i.ph.i, i32 noundef 248) #8
  br label %if.then62.i

if.then62.i:                                      ; preds = %do.end56.i, %land.lhs.true50.i.if.then62.i_crit_edge
  %call63.i = call fastcc i32 @mxl111sf_i2c_stop(ptr noundef %3) #5
  br label %land.lhs.true

if.end64.i:                                       ; preds = %for.inc.critedge.i.i
  %651 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store1_noabort(i32 %651)
  store i8 %byte.1.i.i, ptr %arrayidx.i, align 1
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %data.i.i) #5
  %652 = ptrtoint ptr %len.i to i32
  call void @__asan_load2_noabort(i32 %652)
  %653 = load i16, ptr %len.i, align 4
  %conv66.i = zext i16 %653 to i32
  %sub.i90 = add nsw i32 %conv66.i, -1
  call void @__sanitizer_cov_trace_cmp4(i32 %i.0270.i, i32 %sub.i90)
  %cmp67.i = icmp slt i32 %i.0270.i, %sub.i90
  br i1 %cmp67.i, label %if.then69.i, label %if.end64.i.for.inc.i_crit_edge

if.end64.i.for.inc.i_crit_edge:                   ; preds = %if.end64.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc.i

if.then69.i:                                      ; preds = %if.end64.i
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %b.i.i) #5
  %654 = ptrtoint ptr %b.i.i to i32
  call void @__asan_store1_noabort(i32 %654)
  store i8 0, ptr %b.i.i, align 1
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @dvb_usb_mxl111sf_debug to i32))
  %655 = load i32, ptr @dvb_usb_mxl111sf_debug, align 4
  %and.i223.i = and i32 %655, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i223.i)
  %tobool.not.i224.i = icmp eq i32 %and.i223.i, 0
  br i1 %tobool.not.i224.i, label %if.then69.i.if.end.i229.i_crit_edge, label %do.end.i226.i

if.then69.i.if.end.i229.i_crit_edge:              ; preds = %if.then69.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end.i229.i

do.end.i226.i:                                    ; preds = %if.then69.i
  call void @__sanitizer_cov_trace_pc() #7
  %call.i225.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.52, ptr noundef nonnull @.str.125) #8
  br label %if.end.i229.i

if.end.i229.i:                                    ; preds = %do.end.i226.i, %if.then69.i.if.end.i229.i_crit_edge
  %call1.i227.i = call i32 @mxl111sf_read_reg(ptr noundef %3, i8 noundef zeroext 47, ptr noundef nonnull %b.i.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i227.i)
  %cmp.i228.i = icmp slt i32 %call1.i227.i, 0
  br i1 %cmp.i228.i, label %land.lhs.true.i232.i, label %if.end15.critedge.i.i

land.lhs.true.i232.i:                             ; preds = %if.end.i229.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @dvb_usb_mxl111sf_debug to i32))
  %656 = load i32, ptr @dvb_usb_mxl111sf_debug, align 4
  %and3.i230.i = and i32 %656, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and3.i230.i)
  %tobool4.not.i231.i = icmp eq i32 %and3.i230.i, 0
  br i1 %tobool4.not.i231.i, label %land.lhs.true.i232.i.mxl111sf_i2c_ack.exit.i_crit_edge, label %do.end8.i234.i

land.lhs.true.i232.i.mxl111sf_i2c_ack.exit.i_crit_edge: ; preds = %land.lhs.true.i232.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %mxl111sf_i2c_ack.exit.i

do.end8.i234.i:                                   ; preds = %land.lhs.true.i232.i
  call void @__sanitizer_cov_trace_pc() #7
  %call10.i233.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.125, i32 noundef %call1.i227.i, i32 noundef 183) #8
  br label %mxl111sf_i2c_ack.exit.i

if.end15.critedge.i.i:                            ; preds = %if.end.i229.i
  %call16.i.i = call i32 @mxl111sf_write_reg(ptr noundef %3, i8 noundef zeroext 26, i8 noundef zeroext 18) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call16.i.i)
  %cmp18.i.i = icmp slt i32 %call16.i.i, 0
  br i1 %cmp18.i.i, label %land.lhs.true21.i.i, label %if.end34.critedge.i.i

land.lhs.true21.i.i:                              ; preds = %if.end15.critedge.i.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @dvb_usb_mxl111sf_debug to i32))
  %657 = load i32, ptr @dvb_usb_mxl111sf_debug, align 4
  %and22.i.i = and i32 %657, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and22.i.i)
  %tobool23.not.i.i = icmp eq i32 %and22.i.i, 0
  br i1 %tobool23.not.i.i, label %land.lhs.true21.i.i.mxl111sf_i2c_ack.exit.i_crit_edge, label %do.end27.i.i

land.lhs.true21.i.i.mxl111sf_i2c_ack.exit.i_crit_edge: ; preds = %land.lhs.true21.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %mxl111sf_i2c_ack.exit.i

do.end27.i.i:                                     ; preds = %land.lhs.true21.i.i
  call void @__sanitizer_cov_trace_pc() #7
  %call29.i.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.125, i32 noundef %call16.i.i, i32 noundef 188) #8
  br label %mxl111sf_i2c_ack.exit.i

if.end34.critedge.i.i:                            ; preds = %if.end15.critedge.i.i
  %call35.i.i = call i32 @mxl111sf_write_reg(ptr noundef %3, i8 noundef zeroext 26, i8 noundef zeroext 22) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call35.i.i)
  %cmp37.i.i = icmp slt i32 %call35.i.i, 0
  br i1 %cmp37.i.i, label %land.lhs.true40.i.i, label %if.end53.critedge.i.i

land.lhs.true40.i.i:                              ; preds = %if.end34.critedge.i.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @dvb_usb_mxl111sf_debug to i32))
  %658 = load i32, ptr @dvb_usb_mxl111sf_debug, align 4
  %and41.i.i = and i32 %658, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and41.i.i)
  %tobool42.not.i.i = icmp eq i32 %and41.i.i, 0
  br i1 %tobool42.not.i.i, label %land.lhs.true40.i.i.mxl111sf_i2c_ack.exit.i_crit_edge, label %do.end46.i.i

land.lhs.true40.i.i.mxl111sf_i2c_ack.exit.i_crit_edge: ; preds = %land.lhs.true40.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %mxl111sf_i2c_ack.exit.i

do.end46.i.i:                                     ; preds = %land.lhs.true40.i.i
  call void @__sanitizer_cov_trace_pc() #7
  %call48.i.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.125, i32 noundef %call35.i.i, i32 noundef 194) #8
  br label %mxl111sf_i2c_ack.exit.i

if.end53.critedge.i.i:                            ; preds = %if.end34.critedge.i.i
  %call54.i.i = call i32 @mxl111sf_write_reg(ptr noundef %3, i8 noundef zeroext 26, i8 noundef zeroext 26) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call54.i.i)
  %cmp56.i.i = icmp slt i32 %call54.i.i, 0
  br i1 %cmp56.i.i, label %land.lhs.true59.i.i, label %if.end53.critedge.i.i.mxl111sf_i2c_ack.exit.i_crit_edge

if.end53.critedge.i.i.mxl111sf_i2c_ack.exit.i_crit_edge: ; preds = %if.end53.critedge.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %mxl111sf_i2c_ack.exit.i

land.lhs.true59.i.i:                              ; preds = %if.end53.critedge.i.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @dvb_usb_mxl111sf_debug to i32))
  %659 = load i32, ptr @dvb_usb_mxl111sf_debug, align 4
  %and60.i.i91 = and i32 %659, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and60.i.i91)
  %tobool61.not.i.i92 = icmp eq i32 %and60.i.i91, 0
  br i1 %tobool61.not.i.i92, label %land.lhs.true59.i.i.mxl111sf_i2c_ack.exit.i_crit_edge, label %do.end65.i.i93

land.lhs.true59.i.i.mxl111sf_i2c_ack.exit.i_crit_edge: ; preds = %land.lhs.true59.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %mxl111sf_i2c_ack.exit.i

do.end65.i.i93:                                   ; preds = %land.lhs.true59.i.i
  call void @__sanitizer_cov_trace_pc() #7
  %call67.i.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.125, i32 noundef %call54.i.i, i32 noundef 199) #8
  br label %mxl111sf_i2c_ack.exit.i

mxl111sf_i2c_ack.exit.i:                          ; preds = %do.end65.i.i93, %land.lhs.true59.i.i.mxl111sf_i2c_ack.exit.i_crit_edge, %if.end53.critedge.i.i.mxl111sf_i2c_ack.exit.i_crit_edge, %do.end46.i.i, %land.lhs.true40.i.i.mxl111sf_i2c_ack.exit.i_crit_edge, %do.end27.i.i, %land.lhs.true21.i.i.mxl111sf_i2c_ack.exit.i_crit_edge, %do.end8.i234.i, %land.lhs.true.i232.i.mxl111sf_i2c_ack.exit.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %b.i.i) #5
  br label %for.inc.i

for.inc.i:                                        ; preds = %mxl111sf_i2c_ack.exit.i, %if.end64.i.for.inc.i_crit_edge
  %inc.i = add nuw nsw i32 %i.0270.i, 1
  %660 = ptrtoint ptr %len.i to i32
  call void @__asan_load2_noabort(i32 %660)
  %661 = load i16, ptr %len.i, align 4
  %conv42.i = zext i16 %661 to i32
  %cmp43.i = icmp ult i32 %inc.i, %conv42.i
  br i1 %cmp43.i, label %for.inc.i.for.body.i_crit_edge, label %for.inc.i.for.end.i_crit_edge

for.inc.i.for.end.i_crit_edge:                    ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end.i

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body.i

for.end.i:                                        ; preds = %for.inc.i.for.end.i_crit_edge, %for.cond.preheader.i.for.end.i_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @dvb_usb_mxl111sf_debug to i32))
  %662 = load i32, ptr @dvb_usb_mxl111sf_debug, align 4
  %and.i235.i = and i32 %662, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i235.i)
  %tobool.not.i236.i = icmp eq i32 %and.i235.i, 0
  br i1 %tobool.not.i236.i, label %for.end.i.if.end.i241.i_crit_edge, label %do.end.i238.i

for.end.i.if.end.i241.i_crit_edge:                ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end.i241.i

do.end.i238.i:                                    ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #7
  %call.i237.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.52, ptr noundef nonnull @.str.134) #8
  br label %if.end.i241.i

if.end.i241.i:                                    ; preds = %do.end.i238.i, %for.end.i.if.end.i241.i_crit_edge
  %call1.i239.i = call i32 @mxl111sf_write_reg(ptr noundef %3, i8 noundef zeroext 26, i8 noundef zeroext 30) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i239.i)
  %cmp.i240.i = icmp slt i32 %call1.i239.i, 0
  br i1 %cmp.i240.i, label %land.lhs.true.i244.i, label %if.end15.critedge.i249.i

land.lhs.true.i244.i:                             ; preds = %if.end.i241.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @dvb_usb_mxl111sf_debug to i32))
  %663 = load i32, ptr @dvb_usb_mxl111sf_debug, align 4
  %and3.i242.i = and i32 %663, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and3.i242.i)
  %tobool4.not.i243.i = icmp eq i32 %and3.i242.i, 0
  br i1 %tobool4.not.i243.i, label %land.lhs.true.i244.i.mxl111sf_i2c_nack.exit.i_crit_edge, label %do.end8.i246.i

land.lhs.true.i244.i.mxl111sf_i2c_nack.exit.i_crit_edge: ; preds = %land.lhs.true.i244.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %mxl111sf_i2c_nack.exit.i

do.end8.i246.i:                                   ; preds = %land.lhs.true.i244.i
  call void @__sanitizer_cov_trace_pc() #7
  %call10.i245.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.134, i32 noundef %call1.i239.i, i32 noundef 213) #8
  br label %mxl111sf_i2c_nack.exit.i

if.end15.critedge.i249.i:                         ; preds = %if.end.i241.i
  %call16.i247.i = call i32 @mxl111sf_write_reg(ptr noundef %3, i8 noundef zeroext 26, i8 noundef zeroext 26) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call16.i247.i)
  %cmp18.i248.i = icmp slt i32 %call16.i247.i, 0
  br i1 %cmp18.i248.i, label %land.lhs.true21.i252.i, label %if.end15.critedge.i249.i.mxl111sf_i2c_nack.exit.i_crit_edge

if.end15.critedge.i249.i.mxl111sf_i2c_nack.exit.i_crit_edge: ; preds = %if.end15.critedge.i249.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %mxl111sf_i2c_nack.exit.i

land.lhs.true21.i252.i:                           ; preds = %if.end15.critedge.i249.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @dvb_usb_mxl111sf_debug to i32))
  %664 = load i32, ptr @dvb_usb_mxl111sf_debug, align 4
  %and22.i250.i = and i32 %664, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and22.i250.i)
  %tobool23.not.i251.i = icmp eq i32 %and22.i250.i, 0
  br i1 %tobool23.not.i251.i, label %land.lhs.true21.i252.i.mxl111sf_i2c_nack.exit.i_crit_edge, label %do.end27.i254.i

land.lhs.true21.i252.i.mxl111sf_i2c_nack.exit.i_crit_edge: ; preds = %land.lhs.true21.i252.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %mxl111sf_i2c_nack.exit.i

do.end27.i254.i:                                  ; preds = %land.lhs.true21.i252.i
  call void @__sanitizer_cov_trace_pc() #7
  %call29.i253.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.134, i32 noundef %call16.i247.i, i32 noundef 218) #8
  br label %mxl111sf_i2c_nack.exit.i

mxl111sf_i2c_nack.exit.i:                         ; preds = %do.end27.i254.i, %land.lhs.true21.i252.i.mxl111sf_i2c_nack.exit.i_crit_edge, %if.end15.critedge.i249.i.mxl111sf_i2c_nack.exit.i_crit_edge, %do.end8.i246.i, %land.lhs.true.i244.i.mxl111sf_i2c_nack.exit.i_crit_edge
  %call73.i = call fastcc i32 @mxl111sf_i2c_stop(ptr noundef %3) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call73.i)
  %cmp75.i = icmp slt i32 %call73.i, 0
  br i1 %cmp75.i, label %land.lhs.true78.i, label %mxl111sf_i2c_nack.exit.i.for.inc_crit_edge

mxl111sf_i2c_nack.exit.i.for.inc_crit_edge:       ; preds = %mxl111sf_i2c_nack.exit.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc

land.lhs.true78.i:                                ; preds = %mxl111sf_i2c_nack.exit.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @dvb_usb_mxl111sf_debug to i32))
  %665 = load i32, ptr @dvb_usb_mxl111sf_debug, align 4
  %and79.i = and i32 %665, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and79.i)
  %tobool80.not.i = icmp eq i32 %and79.i, 0
  br i1 %tobool80.not.i, label %land.lhs.true78.i.land.lhs.true_crit_edge, label %do.end84.i

land.lhs.true78.i.land.lhs.true_crit_edge:        ; preds = %land.lhs.true78.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %land.lhs.true

do.end84.i:                                       ; preds = %land.lhs.true78.i
  call void @__sanitizer_cov_trace_pc() #7
  %call86.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.67, i32 noundef %call73.i, i32 noundef 260) #8
  br label %land.lhs.true

if.else.i94:                                      ; preds = %mxl111sf_i2c_start.exit
  br i1 %cmp94.i, label %land.lhs.true97.i, label %if.end110.critedge.i

land.lhs.true97.i:                                ; preds = %if.else.i94
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @dvb_usb_mxl111sf_debug to i32))
  %666 = load i32, ptr @dvb_usb_mxl111sf_debug, align 4
  %and98.i = and i32 %666, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and98.i)
  %tobool99.not.i = icmp eq i32 %and98.i, 0
  br i1 %tobool99.not.i, label %land.lhs.true97.i.land.lhs.true_crit_edge, label %do.end103.i

land.lhs.true97.i.land.lhs.true_crit_edge:        ; preds = %land.lhs.true97.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %land.lhs.true

do.end103.i:                                      ; preds = %land.lhs.true97.i
  call void @__sanitizer_cov_trace_pc() #7
  %call105.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.67, i32 noundef %ret.0.i, i32 noundef 266) #8
  br label %land.lhs.true

if.end110.critedge.i:                             ; preds = %if.else.i94
  %667 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load2_noabort(i32 %667)
  %668 = load i16, ptr %arrayidx, align 4
  %conv112.i = trunc i16 %668 to i8
  %shl113.i = shl i8 %conv112.i, 1
  %call116.i = call fastcc i32 @mxl111sf_i2c_bitbang_sendbyte(ptr noundef %3, i8 noundef zeroext %shl113.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call116.i)
  %cmp118.i = icmp slt i32 %call116.i, 0
  br i1 %cmp118.i, label %land.lhs.true121.i, label %for.cond136.preheader.i

for.cond136.preheader.i:                          ; preds = %if.end110.critedge.i
  %len137.i = getelementptr %struct.i2c_msg, ptr %msg, i32 %i.0161, i32 2
  %669 = ptrtoint ptr %len137.i to i32
  call void @__asan_load2_noabort(i32 %669)
  %670 = load i16, ptr %len137.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %670)
  %cmp139272.not.i = icmp eq i16 %670, 0
  br i1 %cmp139272.not.i, label %for.cond136.preheader.i.for.end166.i_crit_edge, label %for.body141.lr.ph.i

for.cond136.preheader.i.for.end166.i_crit_edge:   ; preds = %for.cond136.preheader.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end166.i

for.body141.lr.ph.i:                              ; preds = %for.cond136.preheader.i
  %buf142.i = getelementptr %struct.i2c_msg, ptr %msg, i32 %i.0161, i32 3
  br label %for.body141.i

land.lhs.true121.i:                               ; preds = %if.end110.critedge.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @dvb_usb_mxl111sf_debug to i32))
  %671 = load i32, ptr @dvb_usb_mxl111sf_debug, align 4
  %and122.i = and i32 %671, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and122.i)
  %tobool123.not.i = icmp eq i32 %and122.i, 0
  br i1 %tobool123.not.i, label %land.lhs.true121.i.if.then133.i_crit_edge, label %do.end127.i

land.lhs.true121.i.if.then133.i_crit_edge:        ; preds = %land.lhs.true121.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then133.i

do.end127.i:                                      ; preds = %land.lhs.true121.i
  call void @__sanitizer_cov_trace_pc() #7
  %call129.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.67, i32 noundef %call116.i, i32 noundef 271) #8
  br label %if.then133.i

if.then133.i:                                     ; preds = %do.end127.i, %land.lhs.true121.i.if.then133.i_crit_edge
  %call134.i = call fastcc i32 @mxl111sf_i2c_stop(ptr noundef %3) #5
  br label %land.lhs.true

for.cond136.i:                                    ; preds = %for.body141.i
  %inc165.i = add nuw nsw i32 %i.1273.i, 1
  %672 = ptrtoint ptr %len137.i to i32
  call void @__asan_load2_noabort(i32 %672)
  %673 = load i16, ptr %len137.i, align 4
  %conv138.i = zext i16 %673 to i32
  %cmp139.i = icmp ult i32 %inc165.i, %conv138.i
  br i1 %cmp139.i, label %for.cond136.i.for.body141.i_crit_edge, label %for.cond136.i.for.end166.i_crit_edge

for.cond136.i.for.end166.i_crit_edge:             ; preds = %for.cond136.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end166.i

for.cond136.i.for.body141.i_crit_edge:            ; preds = %for.cond136.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body141.i

for.body141.i:                                    ; preds = %for.cond136.i.for.body141.i_crit_edge, %for.body141.lr.ph.i
  %i.1273.i = phi i32 [ 0, %for.body141.lr.ph.i ], [ %inc165.i, %for.cond136.i.for.body141.i_crit_edge ]
  %674 = ptrtoint ptr %buf142.i to i32
  call void @__asan_load4_noabort(i32 %674)
  %675 = load ptr, ptr %buf142.i, align 4
  %arrayidx143.i = getelementptr i8, ptr %675, i32 %i.1273.i
  %676 = ptrtoint ptr %arrayidx143.i to i32
  call void @__asan_load1_noabort(i32 %676)
  %677 = load i8, ptr %arrayidx143.i, align 1
  %call144.i95 = call fastcc i32 @mxl111sf_i2c_bitbang_sendbyte(ptr noundef %3, i8 noundef zeroext %677) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call144.i95)
  %cmp146.i = icmp slt i32 %call144.i95, 0
  br i1 %cmp146.i, label %land.lhs.true149.i, label %for.cond136.i

land.lhs.true149.i:                               ; preds = %for.body141.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @dvb_usb_mxl111sf_debug to i32))
  %678 = load i32, ptr @dvb_usb_mxl111sf_debug, align 4
  %and150.i = and i32 %678, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and150.i)
  %tobool151.not.i = icmp eq i32 %and150.i, 0
  br i1 %tobool151.not.i, label %land.lhs.true149.i.if.then161.i_crit_edge, label %do.end155.i

land.lhs.true149.i.if.then161.i_crit_edge:        ; preds = %land.lhs.true149.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then161.i

do.end155.i:                                      ; preds = %land.lhs.true149.i
  call void @__sanitizer_cov_trace_pc() #7
  %call157.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.67, i32 noundef %call144.i95, i32 noundef 279) #8
  br label %if.then161.i

if.then161.i:                                     ; preds = %do.end155.i, %land.lhs.true149.i.if.then161.i_crit_edge
  %call162.i = call fastcc i32 @mxl111sf_i2c_stop(ptr noundef %3) #5
  br label %land.lhs.true

for.end166.i:                                     ; preds = %for.cond136.i.for.end166.i_crit_edge, %for.cond136.preheader.i.for.end166.i_crit_edge
  %call167.i = call fastcc i32 @mxl111sf_i2c_stop(ptr noundef %3) #5
  br label %for.inc

cond.end:                                         ; preds = %do.end.i941.i, %land.lhs.true.i939.i.cond.end_crit_edge, %mxl111sf_i2c_send_data.exit933.i.cond.end_crit_edge
  call void @llvm.lifetime.end.p0(i64 26, ptr nonnull %readbuff.i) #5
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %i2c_r_data.i) #5
  call void @llvm.lifetime.end.p0(i64 26, ptr nonnull %buf.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.3.i)
  %cmp10 = icmp slt i32 %ret.3.i, 0
  br i1 %cmp10, label %cond.end.land.lhs.true_crit_edge, label %cond.end.for.inc_crit_edge

cond.end.for.inc_crit_edge:                       ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc

cond.end.land.lhs.true_crit_edge:                 ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %land.lhs.true

land.lhs.true:                                    ; preds = %cond.end.land.lhs.true_crit_edge, %if.then161.i, %if.then133.i, %do.end103.i, %land.lhs.true97.i.land.lhs.true_crit_edge, %do.end84.i, %land.lhs.true78.i.land.lhs.true_crit_edge, %if.then62.i, %if.then39.i, %do.end12.i, %land.lhs.true.i79.land.lhs.true_crit_edge
  %cond110 = phi i32 [ %ret.0.i, %land.lhs.true97.i.land.lhs.true_crit_edge ], [ %ret.0.i, %land.lhs.true.i79.land.lhs.true_crit_edge ], [ %ret.0.i, %do.end103.i ], [ %call73.i, %land.lhs.true78.i.land.lhs.true_crit_edge ], [ %call73.i, %do.end84.i ], [ %ret.0.i, %do.end12.i ], [ %call144.i95, %if.then161.i ], [ %call116.i, %if.then133.i ], [ %ret.1.i.ph.i, %if.then62.i ], [ %call22.i, %if.then39.i ], [ %ret.3.i, %cond.end.land.lhs.true_crit_edge ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @dvb_usb_mxl111sf_debug to i32))
  %679 = load i32, ptr @dvb_usb_mxl111sf_debug, align 4
  %and = and i32 %679, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool13.not = icmp eq i32 %and, 0
  br i1 %tobool13.not, label %land.lhs.true.if.then19_crit_edge, label %do.end

land.lhs.true.if.then19_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then19

do.end:                                           ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #7
  %call15 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef %cond110, i32 noundef 814) #8
  br label %if.then19

if.then19:                                        ; preds = %do.end, %land.lhs.true.if.then19_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @dvb_usb_mxl111sf_debug to i32))
  %680 = load i32, ptr @dvb_usb_mxl111sf_debug, align 4
  %and20 = and i32 %680, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and20)
  %tobool21.not = icmp eq i32 %and20, 0
  br i1 %tobool21.not, label %if.then19.for.end_crit_edge, label %do.end25

if.then19.for.end_crit_edge:                      ; preds = %if.then19
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end

do.end25:                                         ; preds = %if.then19
  call void @__sanitizer_cov_trace_pc() #7
  %add = add nuw i32 %i.0161, 1
  %arrayidx27 = getelementptr %struct.i2c_msg, ptr %msg, i32 %i.0161
  %flags = getelementptr %struct.i2c_msg, ptr %msg, i32 %i.0161, i32 1
  %681 = ptrtoint ptr %flags to i32
  call void @__asan_load2_noabort(i32 %681)
  %682 = load i16, ptr %flags, align 2
  %683 = and i16 %682, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %683)
  %tobool30.not = icmp eq i16 %683, 0
  %cond31 = select i1 %tobool30.not, ptr @.str.7, ptr @.str.6
  %len = getelementptr %struct.i2c_msg, ptr %msg, i32 %i.0161, i32 2
  %684 = ptrtoint ptr %len to i32
  call void @__asan_load2_noabort(i32 %684)
  %685 = load i16, ptr %len, align 4
  %conv33 = zext i16 %685 to i32
  %686 = ptrtoint ptr %arrayidx27 to i32
  call void @__asan_load2_noabort(i32 %686)
  %687 = load i16, ptr %arrayidx27, align 4
  %conv35 = zext i16 %687 to i32
  %call36 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.1, i32 noundef %cond110, i32 noundef %add, i32 noundef %num, ptr noundef nonnull %cond31, i32 noundef %conv33, i32 noundef %conv35) #8
  br label %for.end

for.inc:                                          ; preds = %cond.end.for.inc_crit_edge, %for.end166.i, %mxl111sf_i2c_nack.exit.i.for.inc_crit_edge
  %inc = add nuw nsw i32 %i.0161, 1
  %exitcond.not = icmp eq i32 %inc, %num
  br i1 %exitcond.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %do.end25, %if.then19.for.end_crit_edge, %for.cond.preheader.for.end_crit_edge
  %i.0159 = phi i32 [ %i.0161, %if.then19.for.end_crit_edge ], [ %i.0161, %do.end25 ], [ 0, %for.cond.preheader.for.end_crit_edge ], [ %num, %for.inc.for.end_crit_edge ]
  call void @mutex_unlock(ptr noundef %i2c_mutex) #5
  call void @__sanitizer_cov_trace_cmp4(i32 %i.0159, i32 %num)
  %cmp40 = icmp eq i32 %i.0159, %num
  %spec.select = select i1 %cmp40, i32 %num, i32 -121
  br label %cleanup

cleanup:                                          ; preds = %for.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %spec.select, %for.end ], [ -11, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mutex_lock_interruptible_nested(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mxl111sf_ctrl_msg(ptr noundef, i8 noundef zeroext, ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @mxl111sf_i2c_bitbang_sendbyte(ptr noundef %state, i8 noundef zeroext %byte) unnamed_addr #0 align 64 {
entry:
  %data = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %data) #5
  %0 = ptrtoint ptr %data to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 0, ptr %data, align 1
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @dvb_usb_mxl111sf_debug to i32))
  %1 = load i32, ptr @dvb_usb_mxl111sf_debug, align 4
  %and = and i32 %1, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %do.end

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %conv = zext i8 %byte to i32
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.89, ptr noundef nonnull @.str.90, i32 noundef %conv) #8
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  %call1 = call i32 @mxl111sf_read_reg(ptr noundef %state, i8 noundef zeroext 47, ptr noundef nonnull %data) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %cmp = icmp slt i32 %call1, 0
  br i1 %cmp, label %land.lhs.true, label %for.cond.preheader

for.cond.preheader:                               ; preds = %if.end
  %conv19 = zext i8 %byte to i32
  br label %for.body

land.lhs.true:                                    ; preds = %if.end
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @dvb_usb_mxl111sf_debug to i32))
  %2 = load i32, ptr @dvb_usb_mxl111sf_debug, align 4
  %and4 = and i32 %2, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and4)
  %tobool5.not = icmp eq i32 %and4, 0
  br i1 %tobool5.not, label %land.lhs.true.fail_crit_edge, label %do.end9

land.lhs.true.fail_crit_edge:                     ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #7
  br label %fail

do.end9:                                          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #7
  %call11 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.90, i32 noundef %call1, i32 noundef 31) #8
  br label %fail

for.cond:                                         ; preds = %if.end66.critedge
  %inc = add nuw nsw i32 %i.0228, 1
  %exitcond.not = icmp eq i32 %inc, 8
  br i1 %exitcond.not, label %for.end, label %for.cond.for.body_crit_edge

for.cond.for.body_crit_edge:                      ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body

for.body:                                         ; preds = %for.cond.for.body_crit_edge, %for.cond.preheader
  %i.0228 = phi i32 [ 0, %for.cond.preheader ], [ %inc, %for.cond.for.body_crit_edge ]
  %shr = lshr i32 128, %i.0228
  %and20 = and i32 %shr, %conv19
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and20)
  %tobool21.not = icmp eq i32 %and20, 0
  %conv22 = select i1 %tobool21.not, i8 0, i8 8
  %3 = ptrtoint ptr %data to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 %conv22, ptr %data, align 1
  %4 = or i8 %conv22, 18
  %call25 = call i32 @mxl111sf_write_reg(ptr noundef %state, i8 noundef zeroext 26, i8 noundef zeroext %4) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call25)
  %cmp27 = icmp slt i32 %call25, 0
  br i1 %cmp27, label %land.lhs.true30, label %if.end43.critedge

land.lhs.true30:                                  ; preds = %for.body
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @dvb_usb_mxl111sf_debug to i32))
  %5 = load i32, ptr @dvb_usb_mxl111sf_debug, align 4
  %and31 = and i32 %5, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and31)
  %tobool32.not = icmp eq i32 %and31, 0
  br i1 %tobool32.not, label %land.lhs.true30.fail_crit_edge, label %do.end36

land.lhs.true30.fail_crit_edge:                   ; preds = %land.lhs.true30
  call void @__sanitizer_cov_trace_pc() #7
  br label %fail

do.end36:                                         ; preds = %land.lhs.true30
  call void @__sanitizer_cov_trace_pc() #7
  %call38 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.90, i32 noundef %call25, i32 noundef 40) #8
  br label %fail

if.end43.critedge:                                ; preds = %for.body
  %6 = ptrtoint ptr %data to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %data, align 1
  %8 = or i8 %7, 22
  %call48 = call i32 @mxl111sf_write_reg(ptr noundef %state, i8 noundef zeroext 26, i8 noundef zeroext %8) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call48)
  %cmp50 = icmp slt i32 %call48, 0
  br i1 %cmp50, label %land.lhs.true53, label %if.end66.critedge

land.lhs.true53:                                  ; preds = %if.end43.critedge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @dvb_usb_mxl111sf_debug to i32))
  %9 = load i32, ptr @dvb_usb_mxl111sf_debug, align 4
  %and54 = and i32 %9, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and54)
  %tobool55.not = icmp eq i32 %and54, 0
  br i1 %tobool55.not, label %land.lhs.true53.fail_crit_edge, label %do.end59

land.lhs.true53.fail_crit_edge:                   ; preds = %land.lhs.true53
  call void @__sanitizer_cov_trace_pc() #7
  br label %fail

do.end59:                                         ; preds = %land.lhs.true53
  call void @__sanitizer_cov_trace_pc() #7
  %call61 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.90, i32 noundef %call48, i32 noundef 45) #8
  br label %fail

if.end66.critedge:                                ; preds = %if.end43.critedge
  %10 = ptrtoint ptr %data to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %data, align 1
  %12 = or i8 %11, 18
  %call70 = call i32 @mxl111sf_write_reg(ptr noundef %state, i8 noundef zeroext 26, i8 noundef zeroext %12) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call70)
  %cmp72 = icmp slt i32 %call70, 0
  br i1 %cmp72, label %land.lhs.true75, label %for.cond

land.lhs.true75:                                  ; preds = %if.end66.critedge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @dvb_usb_mxl111sf_debug to i32))
  %13 = load i32, ptr @dvb_usb_mxl111sf_debug, align 4
  %and76 = and i32 %13, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and76)
  %tobool77.not = icmp eq i32 %and76, 0
  br i1 %tobool77.not, label %land.lhs.true75.fail_crit_edge, label %do.end81

land.lhs.true75.fail_crit_edge:                   ; preds = %land.lhs.true75
  call void @__sanitizer_cov_trace_pc() #7
  br label %fail

do.end81:                                         ; preds = %land.lhs.true75
  call void @__sanitizer_cov_trace_pc() #7
  %call83 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.90, i32 noundef %call70, i32 noundef 50) #8
  br label %fail

for.end:                                          ; preds = %for.cond
  %14 = and i8 %byte, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %14)
  %tobool91.not = icmp eq i8 %14, 0
  br i1 %tobool91.not, label %if.then92, label %for.end.if.end112_crit_edge

for.end.if.end112_crit_edge:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end112

if.then92:                                        ; preds = %for.end
  %call93 = call i32 @mxl111sf_write_reg(ptr noundef %state, i8 noundef zeroext 26, i8 noundef zeroext 26) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call93)
  %cmp95 = icmp slt i32 %call93, 0
  br i1 %cmp95, label %land.lhs.true98, label %if.then92.if.end112_crit_edge

if.then92.if.end112_crit_edge:                    ; preds = %if.then92
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end112

land.lhs.true98:                                  ; preds = %if.then92
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @dvb_usb_mxl111sf_debug to i32))
  %15 = load i32, ptr @dvb_usb_mxl111sf_debug, align 4
  %and99 = and i32 %15, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and99)
  %tobool100.not = icmp eq i32 %and99, 0
  br i1 %tobool100.not, label %land.lhs.true98.fail_crit_edge, label %do.end104

land.lhs.true98.fail_crit_edge:                   ; preds = %land.lhs.true98
  call void @__sanitizer_cov_trace_pc() #7
  br label %fail

do.end104:                                        ; preds = %land.lhs.true98
  call void @__sanitizer_cov_trace_pc() #7
  %call106 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.90, i32 noundef %call93, i32 noundef 58) #8
  br label %fail

if.end112:                                        ; preds = %if.then92.if.end112_crit_edge, %for.end.if.end112_crit_edge
  %call113 = call i32 @mxl111sf_write_reg(ptr noundef %state, i8 noundef zeroext 26, i8 noundef zeroext 30) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call113)
  %cmp115 = icmp slt i32 %call113, 0
  br i1 %cmp115, label %land.lhs.true118, label %if.end131.critedge

land.lhs.true118:                                 ; preds = %if.end112
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @dvb_usb_mxl111sf_debug to i32))
  %16 = load i32, ptr @dvb_usb_mxl111sf_debug, align 4
  %and119 = and i32 %16, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and119)
  %tobool120.not = icmp eq i32 %and119, 0
  br i1 %tobool120.not, label %land.lhs.true118.fail_crit_edge, label %do.end124

land.lhs.true118.fail_crit_edge:                  ; preds = %land.lhs.true118
  call void @__sanitizer_cov_trace_pc() #7
  br label %fail

do.end124:                                        ; preds = %land.lhs.true118
  call void @__sanitizer_cov_trace_pc() #7
  %call126 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.90, i32 noundef %call113, i32 noundef 65) #8
  br label %fail

if.end131.critedge:                               ; preds = %if.end112
  %call132 = call i32 @mxl111sf_read_reg(ptr noundef %state, i8 noundef zeroext 47, ptr noundef nonnull %data) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call132)
  %cmp134 = icmp slt i32 %call132, 0
  br i1 %cmp134, label %land.lhs.true137, label %if.end150.critedge

land.lhs.true137:                                 ; preds = %if.end131.critedge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @dvb_usb_mxl111sf_debug to i32))
  %17 = load i32, ptr @dvb_usb_mxl111sf_debug, align 4
  %and138 = and i32 %17, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and138)
  %tobool139.not = icmp eq i32 %and138, 0
  br i1 %tobool139.not, label %land.lhs.true137.fail_crit_edge, label %do.end143

land.lhs.true137.fail_crit_edge:                  ; preds = %land.lhs.true137
  call void @__sanitizer_cov_trace_pc() #7
  br label %fail

do.end143:                                        ; preds = %land.lhs.true137
  call void @__sanitizer_cov_trace_pc() #7
  %call145 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.90, i32 noundef %call132, i32 noundef 69) #8
  br label %fail

if.end150.critedge:                               ; preds = %if.end131.critedge
  %call151 = call i32 @mxl111sf_write_reg(ptr noundef %state, i8 noundef zeroext 26, i8 noundef zeroext 26) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call151)
  %cmp153 = icmp slt i32 %call151, 0
  br i1 %cmp153, label %land.lhs.true156, label %if.end169.critedge

land.lhs.true156:                                 ; preds = %if.end150.critedge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @dvb_usb_mxl111sf_debug to i32))
  %18 = load i32, ptr @dvb_usb_mxl111sf_debug, align 4
  %and157 = and i32 %18, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and157)
  %tobool158.not = icmp eq i32 %and157, 0
  br i1 %tobool158.not, label %land.lhs.true156.fail_crit_edge, label %do.end162

land.lhs.true156.fail_crit_edge:                  ; preds = %land.lhs.true156
  call void @__sanitizer_cov_trace_pc() #7
  br label %fail

do.end162:                                        ; preds = %land.lhs.true156
  call void @__sanitizer_cov_trace_pc() #7
  %call164 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.90, i32 noundef %call151, i32 noundef 75) #8
  br label %fail

if.end169.critedge:                               ; preds = %if.end150.critedge
  call void @__sanitizer_cov_trace_pc() #7
  %19 = ptrtoint ptr %data to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %data, align 1
  %21 = and i8 %20, 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %21)
  %tobool172.not = icmp eq i8 %21, 0
  %spec.select = select i1 %tobool172.not, i32 %call151, i32 -5
  br label %fail

fail:                                             ; preds = %if.end169.critedge, %do.end162, %land.lhs.true156.fail_crit_edge, %do.end143, %land.lhs.true137.fail_crit_edge, %do.end124, %land.lhs.true118.fail_crit_edge, %do.end104, %land.lhs.true98.fail_crit_edge, %do.end81, %land.lhs.true75.fail_crit_edge, %do.end59, %land.lhs.true53.fail_crit_edge, %do.end36, %land.lhs.true30.fail_crit_edge, %do.end9, %land.lhs.true.fail_crit_edge
  %ret.0 = phi i32 [ %call1, %do.end9 ], [ %call25, %do.end36 ], [ %call48, %do.end59 ], [ %call70, %do.end81 ], [ %call93, %do.end104 ], [ %call113, %do.end124 ], [ %call132, %do.end143 ], [ %call151, %do.end162 ], [ %call1, %land.lhs.true.fail_crit_edge ], [ %call25, %land.lhs.true30.fail_crit_edge ], [ %call48, %land.lhs.true53.fail_crit_edge ], [ %call70, %land.lhs.true75.fail_crit_edge ], [ %call93, %land.lhs.true98.fail_crit_edge ], [ %call113, %land.lhs.true118.fail_crit_edge ], [ %call132, %land.lhs.true137.fail_crit_edge ], [ %call151, %land.lhs.true156.fail_crit_edge ], [ %spec.select, %if.end169.critedge ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %data) #5
  ret i32 %ret.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @mxl111sf_i2c_stop(ptr noundef %state) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @dvb_usb_mxl111sf_debug to i32))
  %0 = load i32, ptr @dvb_usb_mxl111sf_debug, align 4
  %and = and i32 %0, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %do.end

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.52, ptr noundef nonnull @.str.107) #8
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  %call1 = tail call i32 @mxl111sf_write_reg(ptr noundef %state, i8 noundef zeroext 26, i8 noundef zeroext 18) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %cmp = icmp slt i32 %call1, 0
  br i1 %cmp, label %land.lhs.true, label %if.end15.critedge

land.lhs.true:                                    ; preds = %if.end
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @dvb_usb_mxl111sf_debug to i32))
  %1 = load i32, ptr @dvb_usb_mxl111sf_debug, align 4
  %and3 = and i32 %1, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and3)
  %tobool4.not = icmp eq i32 %and3, 0
  br i1 %tobool4.not, label %land.lhs.true.fail_crit_edge, label %do.end8

land.lhs.true.fail_crit_edge:                     ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #7
  br label %fail

do.end8:                                          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #7
  %call10 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.107, i32 noundef %call1, i32 noundef 155) #8
  br label %fail

if.end15.critedge:                                ; preds = %if.end
  %call16 = tail call i32 @mxl111sf_write_reg(ptr noundef %state, i8 noundef zeroext 26, i8 noundef zeroext 22) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call16)
  %cmp18 = icmp slt i32 %call16, 0
  br i1 %cmp18, label %land.lhs.true21, label %if.end34.critedge

land.lhs.true21:                                  ; preds = %if.end15.critedge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @dvb_usb_mxl111sf_debug to i32))
  %2 = load i32, ptr @dvb_usb_mxl111sf_debug, align 4
  %and22 = and i32 %2, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and22)
  %tobool23.not = icmp eq i32 %and22, 0
  br i1 %tobool23.not, label %land.lhs.true21.fail_crit_edge, label %do.end27

land.lhs.true21.fail_crit_edge:                   ; preds = %land.lhs.true21
  call void @__sanitizer_cov_trace_pc() #7
  br label %fail

do.end27:                                         ; preds = %land.lhs.true21
  call void @__sanitizer_cov_trace_pc() #7
  %call29 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.107, i32 noundef %call16, i32 noundef 160) #8
  br label %fail

if.end34.critedge:                                ; preds = %if.end15.critedge
  %call35 = tail call i32 @mxl111sf_write_reg(ptr noundef %state, i8 noundef zeroext 26, i8 noundef zeroext 30) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call35)
  %cmp37 = icmp slt i32 %call35, 0
  br i1 %cmp37, label %land.lhs.true40, label %if.end53.critedge

land.lhs.true40:                                  ; preds = %if.end34.critedge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @dvb_usb_mxl111sf_debug to i32))
  %3 = load i32, ptr @dvb_usb_mxl111sf_debug, align 4
  %and41 = and i32 %3, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and41)
  %tobool42.not = icmp eq i32 %and41, 0
  br i1 %tobool42.not, label %land.lhs.true40.fail_crit_edge, label %do.end46

land.lhs.true40.fail_crit_edge:                   ; preds = %land.lhs.true40
  call void @__sanitizer_cov_trace_pc() #7
  br label %fail

do.end46:                                         ; preds = %land.lhs.true40
  call void @__sanitizer_cov_trace_pc() #7
  %call48 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.107, i32 noundef %call35, i32 noundef 165) #8
  br label %fail

if.end53.critedge:                                ; preds = %if.end34.critedge
  %call54 = tail call i32 @mxl111sf_write_reg(ptr noundef %state, i8 noundef zeroext 26, i8 noundef zeroext 28) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call54)
  %cmp56 = icmp slt i32 %call54, 0
  br i1 %cmp56, label %land.lhs.true59, label %if.end53.critedge.fail_crit_edge

if.end53.critedge.fail_crit_edge:                 ; preds = %if.end53.critedge
  call void @__sanitizer_cov_trace_pc() #7
  br label %fail

land.lhs.true59:                                  ; preds = %if.end53.critedge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @dvb_usb_mxl111sf_debug to i32))
  %4 = load i32, ptr @dvb_usb_mxl111sf_debug, align 4
  %and60 = and i32 %4, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and60)
  %tobool61.not = icmp eq i32 %and60, 0
  br i1 %tobool61.not, label %land.lhs.true59.fail_crit_edge, label %do.end65

land.lhs.true59.fail_crit_edge:                   ; preds = %land.lhs.true59
  call void @__sanitizer_cov_trace_pc() #7
  br label %fail

do.end65:                                         ; preds = %land.lhs.true59
  call void @__sanitizer_cov_trace_pc() #7
  %call67 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.107, i32 noundef %call54, i32 noundef 170) #8
  br label %fail

fail:                                             ; preds = %do.end65, %land.lhs.true59.fail_crit_edge, %if.end53.critedge.fail_crit_edge, %do.end46, %land.lhs.true40.fail_crit_edge, %do.end27, %land.lhs.true21.fail_crit_edge, %do.end8, %land.lhs.true.fail_crit_edge
  %ret.0 = phi i32 [ %call1, %do.end8 ], [ %call16, %do.end27 ], [ %call35, %do.end46 ], [ %call54, %do.end65 ], [ %call54, %land.lhs.true59.fail_crit_edge ], [ %call54, %if.end53.critedge.fail_crit_edge ], [ %call1, %land.lhs.true.fail_crit_edge ], [ %call16, %land.lhs.true21.fail_crit_edge ], [ %call35, %land.lhs.true40.fail_crit_edge ]
  ret i32 %ret.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mxl111sf_write_reg(ptr noundef, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mxl111sf_read_reg(ptr noundef, i8 noundef zeroext, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.umax.i16(i16, i16) #4

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #6 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 101)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 101)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #5 = { nounwind }
attributes #6 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #7 = { nomerge }
attributes #8 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !8, !9, !10, !11, !12, !14, !15, !16, !17, !19, !20, !21, !23, !24, !25, !27, !28, !29, !31, !32, !34, !35, !36, !38, !39, !41, !42, !43, !45, !46, !47, !49, !50, !52, !53, !55, !56, !57, !59, !60, !61, !63, !64, !66, !67, !68, !70, !71, !73, !74, !76, !77, !78, !80, !81, !82, !83, !85, !86, !87, !89, !90, !91, !92, !94, !95, !96, !98, !99, !100, !102, !103, !104, !106, !107, !108, !110, !111, !112, !114, !115, !117, !118, !120, !121, !123, !124, !126, !127, !129, !130, !132, !133, !135, !136, !137, !139, !140, !142, !143, !145, !146, !148, !149, !150, !151, !153, !154, !156, !157, !159, !160, !162, !163, !165, !166, !168, !169, !171, !172, !174, !175, !177, !178, !179, !181, !182, !184, !185, !187, !188, !190, !191, !193, !194, !195, !197, !198, !200, !201, !203, !204, !206, !207, !209, !210, !211, !213, !214, !216, !217, !219, !220, !222, !223, !225, !226, !227, !229, !230, !232}
!llvm.module.flags = !{!233, !234, !235, !236, !237, !238, !239, !240}
!llvm.ident = !{!241}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/media/usb/dvb-usb-v2/mxl111sf-i2c.c", i32 814, i32 7}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @mxl111sf_i2c_xfer._entry, !1, !"_entry", i1 false, i1 false}
!5 = !{ptr @mxl111sf_i2c_xfer._entry_ptr, !1, !"_entry_ptr", i1 false, i1 false}
!6 = !{ptr @.str.4, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../drivers/media/usb/dvb-usb-v2/mxl111sf-i2c.c", i32 815, i32 4}
!8 = !{ptr @mxl111sf_i2c_xfer._entry.3, !7, !"_entry", i1 false, i1 false}
!9 = !{ptr @mxl111sf_i2c_xfer._entry_ptr.5, !7, !"_entry_ptr", i1 false, i1 false}
!10 = !{ptr @.str.6, !7, !"<string literal>", i1 false, i1 false}
!11 = !{ptr @.str.7, !7, !"<string literal>", i1 false, i1 false}
!12 = !{ptr @.str.8, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/media/usb/dvb-usb-v2/mxl111sf-i2c.c", i32 440, i32 2}
!14 = !{ptr @.str.9, !13, !"<string literal>", i1 false, i1 false}
!15 = !{ptr @mxl111sf_i2c_hw_xfer_msg._entry, !13, !"_entry", i1 false, i1 false}
!16 = !{ptr @mxl111sf_i2c_hw_xfer_msg._entry_ptr, !13, !"_entry_ptr", i1 false, i1 false}
!17 = !{ptr @.str.11, !18, !"<string literal>", i1 false, i1 false}
!18 = !{!"../drivers/media/usb/dvb-usb-v2/mxl111sf-i2c.c", i32 479, i32 3}
!19 = !{ptr @mxl111sf_i2c_hw_xfer_msg._entry.10, !18, !"_entry", i1 false, i1 false}
!20 = !{ptr @mxl111sf_i2c_hw_xfer_msg._entry_ptr.12, !18, !"_entry_ptr", i1 false, i1 false}
!21 = !{ptr @.str.14, !22, !"<string literal>", i1 false, i1 false}
!22 = !{!"../drivers/media/usb/dvb-usb-v2/mxl111sf-i2c.c", i32 495, i32 4}
!23 = !{ptr @mxl111sf_i2c_hw_xfer_msg._entry.13, !22, !"_entry", i1 false, i1 false}
!24 = !{ptr @mxl111sf_i2c_hw_xfer_msg._entry_ptr.15, !22, !"_entry_ptr", i1 false, i1 false}
!25 = !{ptr @.str.17, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../drivers/media/usb/dvb-usb-v2/mxl111sf-i2c.c", i32 511, i32 3}
!27 = !{ptr @mxl111sf_i2c_hw_xfer_msg._entry.16, !26, !"_entry", i1 false, i1 false}
!28 = !{ptr @mxl111sf_i2c_hw_xfer_msg._entry_ptr.18, !26, !"_entry_ptr", i1 false, i1 false}
!29 = !{ptr @mxl111sf_i2c_hw_xfer_msg._entry.19, !30, !"_entry", i1 false, i1 false}
!30 = !{!"../drivers/media/usb/dvb-usb-v2/mxl111sf-i2c.c", i32 526, i32 5}
!31 = !{ptr @mxl111sf_i2c_hw_xfer_msg._entry_ptr.20, !30, !"_entry_ptr", i1 false, i1 false}
!32 = !{ptr @.str.22, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/media/usb/dvb-usb-v2/mxl111sf-i2c.c", i32 549, i32 5}
!34 = !{ptr @mxl111sf_i2c_hw_xfer_msg._entry.21, !33, !"_entry", i1 false, i1 false}
!35 = !{ptr @mxl111sf_i2c_hw_xfer_msg._entry_ptr.23, !33, !"_entry_ptr", i1 false, i1 false}
!36 = !{ptr @mxl111sf_i2c_hw_xfer_msg._entry.24, !37, !"_entry", i1 false, i1 false}
!37 = !{!"../drivers/media/usb/dvb-usb-v2/mxl111sf-i2c.c", i32 557, i32 5}
!38 = !{ptr @mxl111sf_i2c_hw_xfer_msg._entry_ptr.25, !37, !"_entry_ptr", i1 false, i1 false}
!39 = !{ptr @.str.27, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../drivers/media/usb/dvb-usb-v2/mxl111sf-i2c.c", i32 579, i32 3}
!41 = !{ptr @mxl111sf_i2c_hw_xfer_msg._entry.26, !40, !"_entry", i1 false, i1 false}
!42 = !{ptr @mxl111sf_i2c_hw_xfer_msg._entry_ptr.28, !40, !"_entry_ptr", i1 false, i1 false}
!43 = !{ptr @.str.30, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../drivers/media/usb/dvb-usb-v2/mxl111sf-i2c.c", i32 601, i32 4}
!45 = !{ptr @mxl111sf_i2c_hw_xfer_msg._entry.29, !44, !"_entry", i1 false, i1 false}
!46 = !{ptr @mxl111sf_i2c_hw_xfer_msg._entry_ptr.31, !44, !"_entry_ptr", i1 false, i1 false}
!47 = !{ptr @mxl111sf_i2c_hw_xfer_msg._entry.32, !48, !"_entry", i1 false, i1 false}
!48 = !{!"../drivers/media/usb/dvb-usb-v2/mxl111sf-i2c.c", i32 619, i32 3}
!49 = !{ptr @mxl111sf_i2c_hw_xfer_msg._entry_ptr.33, !48, !"_entry_ptr", i1 false, i1 false}
!50 = !{ptr @mxl111sf_i2c_hw_xfer_msg._entry.34, !51, !"_entry", i1 false, i1 false}
!51 = !{!"../drivers/media/usb/dvb-usb-v2/mxl111sf-i2c.c", i32 638, i32 5}
!52 = !{ptr @mxl111sf_i2c_hw_xfer_msg._entry_ptr.35, !51, !"_entry_ptr", i1 false, i1 false}
!53 = !{ptr @.str.37, !54, !"<string literal>", i1 false, i1 false}
!54 = !{!"../drivers/media/usb/dvb-usb-v2/mxl111sf-i2c.c", i32 655, i32 7}
!55 = !{ptr @mxl111sf_i2c_hw_xfer_msg._entry.36, !54, !"_entry", i1 false, i1 false}
!56 = !{ptr @mxl111sf_i2c_hw_xfer_msg._entry_ptr.38, !54, !"_entry_ptr", i1 false, i1 false}
!57 = !{ptr @.str.40, !58, !"<string literal>", i1 false, i1 false}
!58 = !{!"../drivers/media/usb/dvb-usb-v2/mxl111sf-i2c.c", i32 671, i32 6}
!59 = !{ptr @mxl111sf_i2c_hw_xfer_msg._entry.39, !58, !"_entry", i1 false, i1 false}
!60 = !{ptr @mxl111sf_i2c_hw_xfer_msg._entry_ptr.41, !58, !"_entry_ptr", i1 false, i1 false}
!61 = !{ptr @mxl111sf_i2c_hw_xfer_msg._entry.42, !62, !"_entry", i1 false, i1 false}
!62 = !{!"../drivers/media/usb/dvb-usb-v2/mxl111sf-i2c.c", i32 674, i32 6}
!63 = !{ptr @mxl111sf_i2c_hw_xfer_msg._entry_ptr.43, !62, !"_entry_ptr", i1 false, i1 false}
!64 = !{ptr @.str.45, !65, !"<string literal>", i1 false, i1 false}
!65 = !{!"../drivers/media/usb/dvb-usb-v2/mxl111sf-i2c.c", i32 681, i32 8}
!66 = !{ptr @mxl111sf_i2c_hw_xfer_msg._entry.44, !65, !"_entry", i1 false, i1 false}
!67 = !{ptr @mxl111sf_i2c_hw_xfer_msg._entry_ptr.46, !65, !"_entry_ptr", i1 false, i1 false}
!68 = !{ptr @mxl111sf_i2c_hw_xfer_msg._entry.47, !69, !"_entry", i1 false, i1 false}
!69 = !{!"../drivers/media/usb/dvb-usb-v2/mxl111sf-i2c.c", i32 714, i32 5}
!70 = !{ptr @mxl111sf_i2c_hw_xfer_msg._entry_ptr.48, !69, !"_entry_ptr", i1 false, i1 false}
!71 = !{ptr @mxl111sf_i2c_hw_xfer_msg._entry.49, !72, !"_entry", i1 false, i1 false}
!72 = !{!"../drivers/media/usb/dvb-usb-v2/mxl111sf-i2c.c", i32 728, i32 5}
!73 = !{ptr @mxl111sf_i2c_hw_xfer_msg._entry_ptr.50, !72, !"_entry_ptr", i1 false, i1 false}
!74 = !{ptr @.str.51, !75, !"<string literal>", i1 false, i1 false}
!75 = !{!"../drivers/media/usb/dvb-usb-v2/mxl111sf-i2c.c", i32 312, i32 2}
!76 = !{ptr @mxl111sf_i2c_send_data._entry, !75, !"_entry", i1 false, i1 false}
!77 = !{ptr @mxl111sf_i2c_send_data._entry_ptr, !75, !"_entry_ptr", i1 false, i1 false}
!78 = !{ptr @.str.52, !79, !"<string literal>", i1 false, i1 false}
!79 = !{!"../drivers/media/usb/dvb-usb-v2/mxl111sf-i2c.c", i32 332, i32 2}
!80 = !{ptr @.str.53, !79, !"<string literal>", i1 false, i1 false}
!81 = !{ptr @mxl111sf_i2c_check_status._entry, !79, !"_entry", i1 false, i1 false}
!82 = !{ptr @mxl111sf_i2c_check_status._entry_ptr, !79, !"_entry_ptr", i1 false, i1 false}
!83 = !{ptr @.str.54, !84, !"<string literal>", i1 false, i1 false}
!84 = !{!"../drivers/media/usb/dvb-usb-v2/mxl111sf-i2c.c", i32 322, i32 2}
!85 = !{ptr @mxl111sf_i2c_get_data._entry, !84, !"_entry", i1 false, i1 false}
!86 = !{ptr @mxl111sf_i2c_get_data._entry_ptr, !84, !"_entry_ptr", i1 false, i1 false}
!87 = !{ptr @.str.55, !88, !"<string literal>", i1 false, i1 false}
!88 = !{!"../drivers/media/usb/dvb-usb-v2/mxl111sf-i2c.c", i32 390, i32 2}
!89 = !{ptr @.str.56, !88, !"<string literal>", i1 false, i1 false}
!90 = !{ptr @mxl111sf_i2c_readagain._entry, !88, !"_entry", i1 false, i1 false}
!91 = !{ptr @mxl111sf_i2c_readagain._entry_ptr, !88, !"_entry_ptr", i1 false, i1 false}
!92 = !{ptr @.str.58, !93, !"<string literal>", i1 false, i1 false}
!93 = !{!"../drivers/media/usb/dvb-usb-v2/mxl111sf-i2c.c", i32 411, i32 3}
!94 = !{ptr @mxl111sf_i2c_readagain._entry.57, !93, !"_entry", i1 false, i1 false}
!95 = !{ptr @mxl111sf_i2c_readagain._entry_ptr.59, !93, !"_entry_ptr", i1 false, i1 false}
!96 = !{ptr @.str.61, !97, !"<string literal>", i1 false, i1 false}
!97 = !{!"../drivers/media/usb/dvb-usb-v2/mxl111sf-i2c.c", i32 415, i32 4}
!98 = !{ptr @mxl111sf_i2c_readagain._entry.60, !97, !"_entry", i1 false, i1 false}
!99 = !{ptr @mxl111sf_i2c_readagain._entry_ptr.62, !97, !"_entry_ptr", i1 false, i1 false}
!100 = !{ptr @.str.63, !101, !"<string literal>", i1 false, i1 false}
!101 = !{!"../drivers/media/usb/dvb-usb-v2/mxl111sf-i2c.c", i32 356, i32 2}
!102 = !{ptr @mxl111sf_i2c_check_fifo._entry, !101, !"_entry", i1 false, i1 false}
!103 = !{ptr @mxl111sf_i2c_check_fifo._entry_ptr, !101, !"_entry_ptr", i1 false, i1 false}
!104 = !{ptr @.str.65, !105, !"<string literal>", i1 false, i1 false}
!105 = !{!"../drivers/media/usb/dvb-usb-v2/mxl111sf-i2c.c", i32 376, i32 3}
!106 = !{ptr @mxl111sf_i2c_check_fifo._entry.64, !105, !"_entry", i1 false, i1 false}
!107 = !{ptr @mxl111sf_i2c_check_fifo._entry_ptr.66, !105, !"_entry_ptr", i1 false, i1 false}
!108 = !{ptr @.str.67, !109, !"<string literal>", i1 false, i1 false}
!109 = !{!"../drivers/media/usb/dvb-usb-v2/mxl111sf-i2c.c", i32 230, i32 2}
!110 = !{ptr @mxl111sf_i2c_sw_xfer_msg._entry, !109, !"_entry", i1 false, i1 false}
!111 = !{ptr @mxl111sf_i2c_sw_xfer_msg._entry_ptr, !109, !"_entry_ptr", i1 false, i1 false}
!112 = !{ptr @mxl111sf_i2c_sw_xfer_msg._entry.68, !113, !"_entry", i1 false, i1 false}
!113 = !{!"../drivers/media/usb/dvb-usb-v2/mxl111sf-i2c.c", i32 235, i32 7}
!114 = !{ptr @mxl111sf_i2c_sw_xfer_msg._entry_ptr.69, !113, !"_entry_ptr", i1 false, i1 false}
!115 = !{ptr @mxl111sf_i2c_sw_xfer_msg._entry.70, !116, !"_entry", i1 false, i1 false}
!116 = !{!"../drivers/media/usb/dvb-usb-v2/mxl111sf-i2c.c", i32 240, i32 7}
!117 = !{ptr @mxl111sf_i2c_sw_xfer_msg._entry_ptr.71, !116, !"_entry_ptr", i1 false, i1 false}
!118 = !{ptr @mxl111sf_i2c_sw_xfer_msg._entry.72, !119, !"_entry", i1 false, i1 false}
!119 = !{!"../drivers/media/usb/dvb-usb-v2/mxl111sf-i2c.c", i32 248, i32 8}
!120 = !{ptr @mxl111sf_i2c_sw_xfer_msg._entry_ptr.73, !119, !"_entry_ptr", i1 false, i1 false}
!121 = !{ptr @mxl111sf_i2c_sw_xfer_msg._entry.74, !122, !"_entry", i1 false, i1 false}
!122 = !{!"../drivers/media/usb/dvb-usb-v2/mxl111sf-i2c.c", i32 260, i32 7}
!123 = !{ptr @mxl111sf_i2c_sw_xfer_msg._entry_ptr.75, !122, !"_entry_ptr", i1 false, i1 false}
!124 = !{ptr @mxl111sf_i2c_sw_xfer_msg._entry.76, !125, !"_entry", i1 false, i1 false}
!125 = !{!"../drivers/media/usb/dvb-usb-v2/mxl111sf-i2c.c", i32 266, i32 7}
!126 = !{ptr @mxl111sf_i2c_sw_xfer_msg._entry_ptr.77, !125, !"_entry_ptr", i1 false, i1 false}
!127 = !{ptr @mxl111sf_i2c_sw_xfer_msg._entry.78, !128, !"_entry", i1 false, i1 false}
!128 = !{!"../drivers/media/usb/dvb-usb-v2/mxl111sf-i2c.c", i32 271, i32 7}
!129 = !{ptr @mxl111sf_i2c_sw_xfer_msg._entry_ptr.79, !128, !"_entry_ptr", i1 false, i1 false}
!130 = !{ptr @mxl111sf_i2c_sw_xfer_msg._entry.80, !131, !"_entry", i1 false, i1 false}
!131 = !{!"../drivers/media/usb/dvb-usb-v2/mxl111sf-i2c.c", i32 279, i32 8}
!132 = !{ptr @mxl111sf_i2c_sw_xfer_msg._entry_ptr.81, !131, !"_entry_ptr", i1 false, i1 false}
!133 = !{ptr @.str.82, !134, !"<string literal>", i1 false, i1 false}
!134 = !{!"../drivers/media/usb/dvb-usb-v2/mxl111sf-i2c.c", i32 128, i32 2}
!135 = !{ptr @mxl111sf_i2c_start._entry, !134, !"_entry", i1 false, i1 false}
!136 = !{ptr @mxl111sf_i2c_start._entry_ptr, !134, !"_entry_ptr", i1 false, i1 false}
!137 = !{ptr @mxl111sf_i2c_start._entry.83, !138, !"_entry", i1 false, i1 false}
!138 = !{!"../drivers/media/usb/dvb-usb-v2/mxl111sf-i2c.c", i32 132, i32 6}
!139 = !{ptr @mxl111sf_i2c_start._entry_ptr.84, !138, !"_entry_ptr", i1 false, i1 false}
!140 = !{ptr @mxl111sf_i2c_start._entry.85, !141, !"_entry", i1 false, i1 false}
!141 = !{!"../drivers/media/usb/dvb-usb-v2/mxl111sf-i2c.c", i32 137, i32 6}
!142 = !{ptr @mxl111sf_i2c_start._entry_ptr.86, !141, !"_entry_ptr", i1 false, i1 false}
!143 = !{ptr @mxl111sf_i2c_start._entry.87, !144, !"_entry", i1 false, i1 false}
!144 = !{!"../drivers/media/usb/dvb-usb-v2/mxl111sf-i2c.c", i32 142, i32 2}
!145 = !{ptr @mxl111sf_i2c_start._entry_ptr.88, !144, !"_entry_ptr", i1 false, i1 false}
!146 = !{ptr @.str.89, !147, !"<string literal>", i1 false, i1 false}
!147 = !{!"../drivers/media/usb/dvb-usb-v2/mxl111sf-i2c.c", i32 28, i32 2}
!148 = !{ptr @.str.90, !147, !"<string literal>", i1 false, i1 false}
!149 = !{ptr @mxl111sf_i2c_bitbang_sendbyte._entry, !147, !"_entry", i1 false, i1 false}
!150 = !{ptr @mxl111sf_i2c_bitbang_sendbyte._entry_ptr, !147, !"_entry_ptr", i1 false, i1 false}
!151 = !{ptr @mxl111sf_i2c_bitbang_sendbyte._entry.91, !152, !"_entry", i1 false, i1 false}
!152 = !{!"../drivers/media/usb/dvb-usb-v2/mxl111sf-i2c.c", i32 31, i32 6}
!153 = !{ptr @mxl111sf_i2c_bitbang_sendbyte._entry_ptr.92, !152, !"_entry_ptr", i1 false, i1 false}
!154 = !{ptr @mxl111sf_i2c_bitbang_sendbyte._entry.93, !155, !"_entry", i1 false, i1 false}
!155 = !{!"../drivers/media/usb/dvb-usb-v2/mxl111sf-i2c.c", i32 40, i32 7}
!156 = !{ptr @mxl111sf_i2c_bitbang_sendbyte._entry_ptr.94, !155, !"_entry_ptr", i1 false, i1 false}
!157 = !{ptr @mxl111sf_i2c_bitbang_sendbyte._entry.95, !158, !"_entry", i1 false, i1 false}
!158 = !{!"../drivers/media/usb/dvb-usb-v2/mxl111sf-i2c.c", i32 45, i32 7}
!159 = !{ptr @mxl111sf_i2c_bitbang_sendbyte._entry_ptr.96, !158, !"_entry_ptr", i1 false, i1 false}
!160 = !{ptr @mxl111sf_i2c_bitbang_sendbyte._entry.97, !161, !"_entry", i1 false, i1 false}
!161 = !{!"../drivers/media/usb/dvb-usb-v2/mxl111sf-i2c.c", i32 50, i32 7}
!162 = !{ptr @mxl111sf_i2c_bitbang_sendbyte._entry_ptr.98, !161, !"_entry_ptr", i1 false, i1 false}
!163 = !{ptr @mxl111sf_i2c_bitbang_sendbyte._entry.99, !164, !"_entry", i1 false, i1 false}
!164 = !{!"../drivers/media/usb/dvb-usb-v2/mxl111sf-i2c.c", i32 58, i32 7}
!165 = !{ptr @mxl111sf_i2c_bitbang_sendbyte._entry_ptr.100, !164, !"_entry_ptr", i1 false, i1 false}
!166 = !{ptr @mxl111sf_i2c_bitbang_sendbyte._entry.101, !167, !"_entry", i1 false, i1 false}
!167 = !{!"../drivers/media/usb/dvb-usb-v2/mxl111sf-i2c.c", i32 65, i32 6}
!168 = !{ptr @mxl111sf_i2c_bitbang_sendbyte._entry_ptr.102, !167, !"_entry_ptr", i1 false, i1 false}
!169 = !{ptr @mxl111sf_i2c_bitbang_sendbyte._entry.103, !170, !"_entry", i1 false, i1 false}
!170 = !{!"../drivers/media/usb/dvb-usb-v2/mxl111sf-i2c.c", i32 69, i32 6}
!171 = !{ptr @mxl111sf_i2c_bitbang_sendbyte._entry_ptr.104, !170, !"_entry_ptr", i1 false, i1 false}
!172 = !{ptr @mxl111sf_i2c_bitbang_sendbyte._entry.105, !173, !"_entry", i1 false, i1 false}
!173 = !{!"../drivers/media/usb/dvb-usb-v2/mxl111sf-i2c.c", i32 75, i32 6}
!174 = !{ptr @mxl111sf_i2c_bitbang_sendbyte._entry_ptr.106, !173, !"_entry_ptr", i1 false, i1 false}
!175 = !{ptr @.str.107, !176, !"<string literal>", i1 false, i1 false}
!176 = !{!"../drivers/media/usb/dvb-usb-v2/mxl111sf-i2c.c", i32 151, i32 2}
!177 = !{ptr @mxl111sf_i2c_stop._entry, !176, !"_entry", i1 false, i1 false}
!178 = !{ptr @mxl111sf_i2c_stop._entry_ptr, !176, !"_entry_ptr", i1 false, i1 false}
!179 = !{ptr @mxl111sf_i2c_stop._entry.108, !180, !"_entry", i1 false, i1 false}
!180 = !{!"../drivers/media/usb/dvb-usb-v2/mxl111sf-i2c.c", i32 155, i32 6}
!181 = !{ptr @mxl111sf_i2c_stop._entry_ptr.109, !180, !"_entry_ptr", i1 false, i1 false}
!182 = !{ptr @mxl111sf_i2c_stop._entry.110, !183, !"_entry", i1 false, i1 false}
!183 = !{!"../drivers/media/usb/dvb-usb-v2/mxl111sf-i2c.c", i32 160, i32 6}
!184 = !{ptr @mxl111sf_i2c_stop._entry_ptr.111, !183, !"_entry_ptr", i1 false, i1 false}
!185 = !{ptr @mxl111sf_i2c_stop._entry.112, !186, !"_entry", i1 false, i1 false}
!186 = !{!"../drivers/media/usb/dvb-usb-v2/mxl111sf-i2c.c", i32 165, i32 6}
!187 = !{ptr @mxl111sf_i2c_stop._entry_ptr.113, !186, !"_entry_ptr", i1 false, i1 false}
!188 = !{ptr @mxl111sf_i2c_stop._entry.114, !189, !"_entry", i1 false, i1 false}
!189 = !{!"../drivers/media/usb/dvb-usb-v2/mxl111sf-i2c.c", i32 170, i32 2}
!190 = !{ptr @mxl111sf_i2c_stop._entry_ptr.115, !189, !"_entry_ptr", i1 false, i1 false}
!191 = !{ptr @.str.116, !192, !"<string literal>", i1 false, i1 false}
!192 = !{!"../drivers/media/usb/dvb-usb-v2/mxl111sf-i2c.c", i32 91, i32 2}
!193 = !{ptr @mxl111sf_i2c_bitbang_recvbyte._entry, !192, !"_entry", i1 false, i1 false}
!194 = !{ptr @mxl111sf_i2c_bitbang_recvbyte._entry_ptr, !192, !"_entry_ptr", i1 false, i1 false}
!195 = !{ptr @mxl111sf_i2c_bitbang_recvbyte._entry.117, !196, !"_entry", i1 false, i1 false}
!196 = !{!"../drivers/media/usb/dvb-usb-v2/mxl111sf-i2c.c", i32 97, i32 6}
!197 = !{ptr @mxl111sf_i2c_bitbang_recvbyte._entry_ptr.118, !196, !"_entry_ptr", i1 false, i1 false}
!198 = !{ptr @mxl111sf_i2c_bitbang_recvbyte._entry.119, !199, !"_entry", i1 false, i1 false}
!199 = !{!"../drivers/media/usb/dvb-usb-v2/mxl111sf-i2c.c", i32 104, i32 7}
!200 = !{ptr @mxl111sf_i2c_bitbang_recvbyte._entry_ptr.120, !199, !"_entry_ptr", i1 false, i1 false}
!201 = !{ptr @mxl111sf_i2c_bitbang_recvbyte._entry.121, !202, !"_entry", i1 false, i1 false}
!202 = !{!"../drivers/media/usb/dvb-usb-v2/mxl111sf-i2c.c", i32 108, i32 7}
!203 = !{ptr @mxl111sf_i2c_bitbang_recvbyte._entry_ptr.122, !202, !"_entry_ptr", i1 false, i1 false}
!204 = !{ptr @mxl111sf_i2c_bitbang_recvbyte._entry.123, !205, !"_entry", i1 false, i1 false}
!205 = !{!"../drivers/media/usb/dvb-usb-v2/mxl111sf-i2c.c", i32 116, i32 7}
!206 = !{ptr @mxl111sf_i2c_bitbang_recvbyte._entry_ptr.124, !205, !"_entry_ptr", i1 false, i1 false}
!207 = !{ptr @.str.125, !208, !"<string literal>", i1 false, i1 false}
!208 = !{!"../drivers/media/usb/dvb-usb-v2/mxl111sf-i2c.c", i32 180, i32 2}
!209 = !{ptr @mxl111sf_i2c_ack._entry, !208, !"_entry", i1 false, i1 false}
!210 = !{ptr @mxl111sf_i2c_ack._entry_ptr, !208, !"_entry_ptr", i1 false, i1 false}
!211 = !{ptr @mxl111sf_i2c_ack._entry.126, !212, !"_entry", i1 false, i1 false}
!212 = !{!"../drivers/media/usb/dvb-usb-v2/mxl111sf-i2c.c", i32 183, i32 6}
!213 = !{ptr @mxl111sf_i2c_ack._entry_ptr.127, !212, !"_entry_ptr", i1 false, i1 false}
!214 = !{ptr @mxl111sf_i2c_ack._entry.128, !215, !"_entry", i1 false, i1 false}
!215 = !{!"../drivers/media/usb/dvb-usb-v2/mxl111sf-i2c.c", i32 188, i32 6}
!216 = !{ptr @mxl111sf_i2c_ack._entry_ptr.129, !215, !"_entry_ptr", i1 false, i1 false}
!217 = !{ptr @mxl111sf_i2c_ack._entry.130, !218, !"_entry", i1 false, i1 false}
!218 = !{!"../drivers/media/usb/dvb-usb-v2/mxl111sf-i2c.c", i32 194, i32 6}
!219 = !{ptr @mxl111sf_i2c_ack._entry_ptr.131, !218, !"_entry_ptr", i1 false, i1 false}
!220 = !{ptr @mxl111sf_i2c_ack._entry.132, !221, !"_entry", i1 false, i1 false}
!221 = !{!"../drivers/media/usb/dvb-usb-v2/mxl111sf-i2c.c", i32 199, i32 2}
!222 = !{ptr @mxl111sf_i2c_ack._entry_ptr.133, !221, !"_entry_ptr", i1 false, i1 false}
!223 = !{ptr @.str.134, !224, !"<string literal>", i1 false, i1 false}
!224 = !{!"../drivers/media/usb/dvb-usb-v2/mxl111sf-i2c.c", i32 208, i32 2}
!225 = !{ptr @mxl111sf_i2c_nack._entry, !224, !"_entry", i1 false, i1 false}
!226 = !{ptr @mxl111sf_i2c_nack._entry_ptr, !224, !"_entry_ptr", i1 false, i1 false}
!227 = !{ptr @mxl111sf_i2c_nack._entry.135, !228, !"_entry", i1 false, i1 false}
!228 = !{!"../drivers/media/usb/dvb-usb-v2/mxl111sf-i2c.c", i32 213, i32 6}
!229 = !{ptr @mxl111sf_i2c_nack._entry_ptr.136, !228, !"_entry_ptr", i1 false, i1 false}
!230 = !{ptr @mxl111sf_i2c_nack._entry.137, !231, !"_entry", i1 false, i1 false}
!231 = !{!"../drivers/media/usb/dvb-usb-v2/mxl111sf-i2c.c", i32 218, i32 2}
!232 = !{ptr @mxl111sf_i2c_nack._entry_ptr.138, !231, !"_entry_ptr", i1 false, i1 false}
!233 = !{i32 1, !"wchar_size", i32 2}
!234 = !{i32 1, !"min_enum_size", i32 4}
!235 = !{i32 8, !"branch-target-enforcement", i32 0}
!236 = !{i32 8, !"sign-return-address", i32 0}
!237 = !{i32 8, !"sign-return-address-all", i32 0}
!238 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!239 = !{i32 7, !"uwtable", i32 1}
!240 = !{i32 7, !"frame-pointer", i32 2}
!241 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
